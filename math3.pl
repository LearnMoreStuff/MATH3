#!/usr/bin/perl

use strict;
use warnings;

print "Hello, What is your name? ";
my $name = <STDIN>;
chomp($name);

print "Hi $name thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!\n";
sleep(1);

print "If you get the math wrong you start over!!\n";
sleep(1);

print "What is 1+1? ";
my $math = <STDIN>;
chomp($math);

if ($math == 2) {
    print "Thats right\n";
} else {
    print "Wrong\n";
    exit 1;
}

sleep(2);

print "What is 2+2? ";
$math = <STDIN>;
chomp($math);

if ($math == 4) {
    print "Thats right\n";
    # Continue with other questions...
} else {
    print "Wrong\n";
    exit 1;
}
