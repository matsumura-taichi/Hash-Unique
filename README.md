# NAME

Hash::Unique - It's hash manipulation module

# DESCRIPTION

### get\_unique\_hash

This subroutine makes 2 dimensional hashes unique by specified key.

#### way to use

    use Hash::Unique;

    my $hashes = [
      {id => 1, name => 'tanaka'},
      {id => 2, name => 'sato'},
      {id => 3, name => 'suzuki'},
      {id => 4, name => 'tanaka'}
    ];

    my $unique_hash = &get_unique_hash($hashes, "name");

#### result

Contents of "$unique\_hash"

    [
     {id => 1, name => 'tanaka'},
     {id => 2, name => 'sato'},
     {id => 3, name => 'suzuki'}
    ]

# LICENSE

Copyright (C) matsumura-taichi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

matsumura-taichi <hiroto.in.the.cromagnons@gmail.com>
