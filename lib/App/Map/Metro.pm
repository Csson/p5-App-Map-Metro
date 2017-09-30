use strict;
use warnings;

package App::Map::Metro;

# ABSTRACT: Web interface to Map::Metro maps
# AUTHORITY
our $VERSION = '0.0201';

1;


__END__

=pod

=head1 SYNOPSIS

    $ morbo path/to/app-map-metro
    # Then visit http://localhost:3000
    # or:

    $ map-metro.pl mroute Stockholm Akalla Kista

=head1 DESCRIPTION

App::Map::Metro is a simple web interface to L<Map::Metro> implemented in L<Mojolicious>. It can also be used as an alternative backend to the C<route> command, by instead using C<mroute> (currently hardcoded to use C<localhost> and port 3000).

The web interface (available at C<http://localhost:3000>), lists all installed maps and presents two C<select> menus to pick routes in a chosen city.

There is currently no error handlling.

=head1 SEE ALSO

=for :list
* L<Map::Metro>
* L<Task::MapMetro::Maps>

=cut
