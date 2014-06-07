use Mojolicious::Lite;
use Data::Dumper;

get '/' => sub {
    my $self = shift;
    $self->render(text => 
'<html>
<head>
<style type="text/css">
    body {background-color:blue}
</style>
</head>
<body>
<pre>' .
Dumper(\%ENV)
. '</pre></body></html>');
};

app->start;

