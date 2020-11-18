package Bot::IRC::X::MetarTaf;
# ABSTRACT: Bot::IRC plugin for METAR and TAF reporting

use 5.014;
use strict;
use warnings;

use LWP::Simple 'get';

# VERSION

sub init {
    my ($bot) = @_;

    $bot->hook(
        {
            to_me => 1,
            text  => qr/^(?<type>metar|taf)\s+(?<code>\S+)/i,
        },
        sub {
            my ( $bot, $in, $m ) = @_;
            my $code = uc( $m->{code} );
            $code = 'K' . $code if ( length $code == 3 );

            if ( lc( $m->{type} ) eq 'taf' ) {
                my $content = get(
                    'http://tgftp.nws.noaa.gov/data/forecasts/taf/stations/' . $code . '.TXT',
                );

                if ($content) {
                    my @content = split( /\r?\n/, $content );
                    shift @content for ( 0 .. 1 );
                    $bot->reply_to( join( '; ', map { s/^\s+|\s+$//g; $_ } @content ) );
                }
                else {
                    $bot->reply_to("Unable to find TAF data for $code.");
                }
            }
            else {
                my $content = get(
                    'http://tgftp.nws.noaa.gov/data/observations/metar/stations/' . $code . '.TXT',
                );
                if ($content) {
                    $bot->reply_to( ( split( /\r?\n/, $content ) )[1] );
                }
                else {
                    $bot->reply_to("Unable to find METAR data for $code.");
                }
            }
        },
    );

    $bot->helps(
        metartaf =>
            'Get airport weather from NOAA. ' .
            'Usage: <bot> metar <airport code>; <bot> taf <airport code>.',
    );
}

1;
__END__
=pod

=begin :badges

=for markdown
[![test](https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf/workflows/test/badge.svg)](https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-MetarTaf/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-MetarTaf)

=end :badges

=head1 SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['MetarTaf'],
    )->run;

=head1 DESCRIPTION

This L<Bot::IRC> plugin is for METAR and TAF reporting.

    bot metar <airport code>
    bot taf <airport code>

=head1 SEE ALSO

You can look for additional information at:

=for :list
* L<Bot::IRC>
* L<GitHub|https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf>
* L<MetaCPAN|https://metacpan.org/pod/Bot::IRC::X::MetarTaf>
* L<GitHub Actions|https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf/actions>
* L<Codecov|https://codecov.io/gh/gryphonshafer/Bot-IRC-X-MetarTaf>
* L<CPANTS|http://cpants.cpanauthors.org/dist/Bot-IRC-X-MetarTaf>
* L<CPAN Testers|http://www.cpantesters.org/distro/T/Bot-IRC-X-MetarTaf.html>

=for Pod::Coverage init

=cut
