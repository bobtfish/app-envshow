use Mojolicious::Lite;
use Data::Dumper;

get '/' => sub {
    my $self = shift;
    $self->render(text => Dumper(\%ENV));
};

app->start;

