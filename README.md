# NAME

Bot::IRC::X::MetarTaf - Bot::IRC plugin for METAR and TAF reporting

# VERSION

version 1.05

[![test](https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf/workflows/test/badge.svg)](https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-MetarTaf/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-MetarTaf)

# SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['MetarTaf'],
    )->run;

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC) plugin is for METAR and TAF reporting.

    bot metar <airport code>
    bot taf <airport code>

# SEE ALSO

You can look for additional information at:

- [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC)
- [GitHub](https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf)
- [MetaCPAN](https://metacpan.org/pod/Bot::IRC::X::MetarTaf)
- [GitHub Actions](https://github.com/gryphonshafer/Bot-IRC-X-MetarTaf/actions)
- [Codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-MetarTaf)
- [CPANTS](http://cpants.cpanauthors.org/dist/Bot-IRC-X-MetarTaf)
- [CPAN Testers](http://www.cpantesters.org/distro/T/Bot-IRC-X-MetarTaf.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2016-2050 by Gryphon Shafer.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
