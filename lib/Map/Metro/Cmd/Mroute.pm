use 5.10.0;
use strict;
use warnings;

package Map::Metro::Cmd::Mroute;

# ABSTRACT: Search in a map
# AUTHORITY
# VERSION

use Moose;
use MooseX::App::Command;
use HTTP::Tiny;
extends 'Map::Metro::Cmd';

parameter cityname => (
    is => 'rw',
    isa => Str,
    documentation => 'The name of the city you want to search in',
    required => 1,
);
parameter origin => (
    is => 'rw',
    isa => Str,
    documentation => 'Start station',
    required => 1,
);
parameter destination => (
    is => 'rw',
    isa => Str,
    documentation => 'Final station',
    required => 1,
);

command_short_description 'Search in a map';

sub run {
    my $self = shift;

    my $url = sprintf 'http://localhost:3000/%s/%s/%s.txt', $self->cityname, $self->origin, $self->destination;
    my $content = HTTP::Tiny->new->get($url)->{'content'};
    print $content;
}

1;

__END__

=pod

=head1 DESCRIPTION

See L<route|Map::Metro::Cmd/"map-metro.pl route $city $from $to">.

=cut
