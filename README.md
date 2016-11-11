# NAME

Bot::IRC::X::MetarTaf - Bot::IRC plugin for METAR and TAF reporting

# VERSION

version 1.01

[![Build Status](https://travis-ci.org/gryphonshafer/Bot-IRC-X-MetarTaf.svg)](https://travis-ci.org/gryphonshafer/Bot-IRC-X-MetarTaf)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/Bot-IRC-X-MetarTaf/badge.png)](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-MetarTaf)

# SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['MetarTaf'],
    )->run;

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot::IRC) plugin is for METAR and TAF reporting.

    bot metar <airport code>
    bot taf <airport code>

# SEE ALSO

You can look for additional information at:

- [Bot::IRC](https://metacpan.org/pod/Bot::IRC)
- [GitHub](https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf)
- [CPAN](http://search.cpan.org/dist/Bot-IRC-X-MetarTaf)
- [MetaCPAN](https://metacpan.org/pod/Bot::IRC::X::MetarTaf)
- [AnnoCPAN](http://annocpan.org/dist/Bot-IRC-X-MetarTaf)
- [Travis CI](https://travis-ci.org/gryphonshafer/Bot-IRC-X-MetarTaf)
- [Coveralls](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-MetarTaf)
- [CPANTS](http://cpants.cpanauthors.org/dist/Bot-IRC-X-MetarTaf)
- [CPAN Testers](http://www.cpantesters.org/distro/T/Bot-IRC-X-MetarTaf.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Gryphon Shafer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
