:- use_module(library(random)).

start :-
    write('-------------------------------------'), nl,
    write('     GUESS THE NUMBER GAME'), nl,
    write('-------------------------------------'), nl,
    write('I have selected a number between 1 and 10.'), nl,
    write('Try to guess it!'), nl,
    random(1, 11, Number),   % generates random number between 1 & 10
    guess(Number).

guess(Number) :-
    write('Enter your guess: '),
    read(Guess),
    check(Guess, Number).

check(Guess, Number) :-
    Guess =:= Number,
    write('🎉 Congratulations! You guessed the correct number!'), nl,
    write('Game Over.'), !.

check(Guess, Number) :-
    Guess < Number,
    write('Too low! Try again.'), nl,
    guess(Number).

check(Guess, Number) :-
    Guess > Number,
    write('Too high! Try again.'), nl,
    guess(Number).
