package Hash::Unique;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

sub unique {
  (my $array_hash, my $key) = @_;

  my $tmp;
  my $return_hash;

  foreach my $hash (@{$array_hash}) {
    if (!in_array($hash->{$key}, $tmp)) {
      push (@{$return_hash}, $hash);
      push (@{$tmp}, $hash->{$key});
    }
  }

  return $return_hash;
}

sub in_array {
  (my $val, my $array_ref) = @_;

  foreach my $elem (@{$array_ref}) {
    if ($val eq $elem) {
      return 1;
    }
  }

  return 0;
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
