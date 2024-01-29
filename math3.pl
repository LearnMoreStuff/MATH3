#!/usr/bin/perl

use strict;
use warnings;

sub ask_question {
    my ($prompt, $correct_answer) = @_;

    print $prompt;
    my $answer = <STDIN>;
    chomp($answer);

    if ($answer == $correct_answer) {
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

# Define the questions and answers
my @questions = (
    { prompt => "What is 1+1? ", answer => 2 },
    { prompt => "What is 2+2? ", answer => 4 },
    { prompt => "What is 3+3? ", answer => 6 },
    # Add more questions as needed
);

# Shuffle the questions
@questions = shuffle_array(@questions);

# Ask each question in a random order
foreach my $q (@questions) {
    last unless ask_question($q->{prompt}, $q->{answer});
    sleep(2);  # Pause between questions
}

print "Congratulations! You've completed the math quiz!\n";
