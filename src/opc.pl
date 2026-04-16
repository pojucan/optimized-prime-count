#!/usr/bin/env perl
use strict;
use warnings;
use Math::Complex;
use Math::Prime::Util qw(prime_count);

sub heavy_computation {
    my ($n) = @_;

    # Soma de quadrados (O(1))
    my $sum = $n * ($n + 1) * (2 * $n + 1) / 6;

    # Contagem de primos
    my $prime_count = prime_count($n);

    # Número complexo
    my $complex = Math::Complex->make(3, 4);
    my $result  = $complex ** 2;

    return ($sum, $prime_count, $result);
}

sub main {
    my $n = 1_000_000;

    my ($sum, $primes, $complex) = heavy_computation($n);

    print "Sum of squares: $sum\n";
    print "Prime count: $primes\n";
    print "Complex result: $complex\n";
}

main();