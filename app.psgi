use Mojolicious::Lite;

get '/' => sub {
    my $self = shift;
    $self->render(text => "dinosaurs.... trolling");
};

app->start;

