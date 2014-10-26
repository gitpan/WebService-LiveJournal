package WebService::LiveJournal::EventList;

use strict;
use warnings;
use WebService::LiveJournal::List;
use WebService::LiveJournal::Event;
our @ISA = qw/ WebService::LiveJournal::List /;

# ABSTRACT: List of LiveJournal events
our $VERSION = '0.06'; # VERSION


sub init
{
  my $self = shift;
  my %arg = @_;
  
  if(defined $arg{response})
  {
    my $events = $arg{response}->value->{events};
    if(defined $events)
    {
      foreach my $e (@{ $events })
      {
        $self->push(new WebService::LiveJournal::Event(client => $arg{client}, %{ $e }));
      }
    }
  }
  
  return $self;
}

sub as_string
{
  my $self = shift;
  my $str = '[eventlist ';
  foreach my $friend (@{ $self })
  {
    $str .= $friend->as_string;
  }
  $str .= ']';
  $str;
}

1;

__END__

=pod

=head1 NAME

WebService::LiveJournal::EventList - List of LiveJournal events

=head1 VERSION

version 0.06

=head1 SYNOPSIS

 use WebService::LiveJournal::Client;
 my $client = WebService::LiveJournal::Client->new(
   username => $user,
   password => $pass,
 );
 
 # $list is an instance of WS::LJ::EventList
 my $list = $client->getevents('lastn', howmany => 50);
 
 foreach my $event (@$list)
 {
   # event is an instance of WS::LJ::Event
   ...
 }

=head1 DESCRIPTION

This class represents a list of LiveJournal events.  It can be used
as a array reference.

=head1 SEE ALSO

L<WebService::LiveJournal>,
L<WebService::LiveJournal::Event>,

=cut

=head1 AUTHOR

Graham Ollis <plicease@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
