use Mojolicious::Lite;

get '/' => sub {
    my $self = shift;
    $self->render(text => "Hi Scale summit");
};

app->start;

