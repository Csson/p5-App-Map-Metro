# NAME

App::Map::Metro - Web interface to Map::Metro maps

# VERSION

Version 0.0001, released 2015-01-24.

# SYNOPSIS

    $ morbo path/to/app-map-metro
    # Then visit http://localhost:3000
    # or:

    $ map-metro.pl mroute Stockholm Akalla Kista

# DESCRIPTION

App::Map::Metro is a simple web interface to [Map::Metro](https://metacpan.org/pod/Map::Metro) implemented in [Mojolicious](https://metacpan.org/pod/Mojolicious). It can also be used as an alternative backend to the `route` command, by instead using `mroute` (currently hardcoded to use `localhost` and port 3000).

The web interface (available at `http://localhost:3000`), lists all installed maps and presents two `select` menus to pick routes in a chosen city.

There is currently no error handlling.

# SEE ALSO

- [Map::Metro](https://metacpan.org/pod/Map::Metro)
- [Task::MapMetro::Maps](https://metacpan.org/pod/Task::MapMetro::Maps)

# HOMEPAGE

Please visit the project's homepage at [https://metacpan.org/release/App-Map-Metro](https://metacpan.org/release/App-Map-Metro).

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
