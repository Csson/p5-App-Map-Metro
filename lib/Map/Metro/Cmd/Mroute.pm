use Map::Metro::Standard::Moops;

# VERSION
# PODNAME: Map::Metro::Cmd::Mroute

class Map::Metro::Cmd::Mroute extends Map::Metro::Cmd using Moose {

    use MooseX::App::Command;
    use HTTP::Tiny;

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

    method run {

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
