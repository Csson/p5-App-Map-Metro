requires 'perl', '5.016000';

requires 'Mojolicious::Lite', '5.00';
requires 'URI::Encode';
requires 'List::AllUtils';
requires 'Map::Metro', '0.2206';

on test => sub {
    requires 'Test::More', '0.96';
};
