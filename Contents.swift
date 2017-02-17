import UIKit

print("Enter integer for computer to guess between 1 and 50")
let input = 42

var max = 50
var min = 1
var guess = 25
var guesses = 1

while(guess != input)
{
    if(guess < input)
    {
        min = guess
        guess = (max - guess) / 2 + guess
    }
    else
    {
        max = guess
        guess = (guess - min) / 2
    }
    
    guesses += 1
}
print("Your number is", guess)
print("The computer got your number in", guesses,"guesses")