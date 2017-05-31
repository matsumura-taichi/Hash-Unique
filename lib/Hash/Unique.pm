package Hash::Unique;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

sub unique {
  (my $array_hash, my $key) = @_;

  my %tmp;
  my $return_hash;

  foreach my $hash (@{$array_hash}) {
    next if defined $tmp{$hash->{$key}};
    push @{$return_hash}, $hash;
    $tmp{$hash->{$key}} ++;
  }

  return $return_hash;
}

1;
__END__

=encoding utf-8

=head1 NAME

Hash::Unique - It's new $module

=head1 SYNOPSIS

    use Hash::Unique;

=head1 DESCRIPTION

Hash::Unique is ...

=head1 LICENSE

Copyright (C) matsumura-taichi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

matsumura-taichi E<lt>hiroto.in.the.cromagnons@gmail.comE<gt>

=cut
