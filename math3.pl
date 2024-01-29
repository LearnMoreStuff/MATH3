#!/usr/bin/perl

use strict;
use warnings;

sub ask_question {
    my ($num1, $num2, $operator) = @_;

    my $prompt = "What is $num1 $operator $num2? ";
    print $prompt;

    my $answer = <STDIN>;
    chomp($answer);

    my $result;
    if ($operator eq '+') {
        $result = $num1 + $num2;
    } elsif ($operator eq '-') {
        $result = $num1 - $num2;
    } elsif ($operator eq '*') {
        $result = $num1 * $num2;
    } elsif ($operator eq '/') {
        $result = $num1 / $num2;
    }

    if ($answer == $result) {
        print "Thats right\n";
        return 1;  # Correct
    } else {
        print "Wrong\n";
        return 0;  # Incorrect
    }
}

sub shuffle_array {
    my @array = @_;

    for (my $i = $#array; $i > 0; $i--) {
        my $j = int(rand($i + 1));
        @array[$i, $j] = @array[$j, $i];
    }

    return @array;
}

print "Hello, What is your name? ";
my $name = <STDIN>;
chomp($name);

print "Hi $name thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!\n";
sleep(1);

print "If you get the math wrong you start over!!\n";
sleep(1);

my @operators = ('+', '-', '*', '/');

# Continue asking questions until the user provides an incorrect answer
while (1) {
    my $num1 = int(rand(10));
    my $num2 = int(rand(10));
    my $operator = $operators[int(rand(@operators))];

    last unless ask_question($num1, $num2, $operator);

    sleep(2);  # Pause between questions
}

print "Oops! You provided an incorrect answer. Better luck next time!\n";
