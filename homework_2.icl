module HW2
import StdEnv

/*
Please write your NEPTUN code here: HHFX00

Your submission should not have any errors when running the code.
You'll receive a total of 100 points when you successfully solve both problems,
with 50 points awarded for each.

You should not delete anything from the given code, given test cases should stay
the same, but you can add your tests as well. Don't change the given function signatures. 
You can add your own functions, of course.

Make sure that you comment all 'Start'-s before submitting the code.
*/

//Task 1
/*
Sum all the numbers below (and including) x that are multipliers of 3 or 5.
You can consider that the number is positive.
*/

sumOfDiv :: Int -> Int
sumOfDiv n = sum [i \\ i <- [1..n] | i rem 3 == 0 || i rem 5 == 0]

//Start = sumOfDiv 10 // 3 + 5 + 6 + 9 + 10 = 33
//Start = sumOfDiv 15 // 60
//Start = sumOfDiv 50 // 593
//Start = sumOfDiv 0 // 0

//Task 2
/*
Find the n-th index of the Tribonacci number sequence.
T(n) = T(n - 1) + T(n - 2) + T(n - 3) for n >= 3, with T(0) = 0 and T(1) = T(2) = 1. 
Read more here: https://en.wikipedia.org/wiki/Tribonacci_number
*/

tribonacci :: Int -> Int
tribonacci 0 = 0
tribonacci 1 = 1
tribonacci 2 = 1
tribonacci n
| n < 0 = abort "invalid argument"
= tribonacci (n-1) + tribonacci (n-2) + tribonacci (n-3)

//Start = tribonacci 4 // 4
//Start = tribonacci 6 // 13
//Start = tribonacci 8 // 44
//Start = tribonacci 0 // 0
//Start = tribonacci 1 // 1
//Start = tribonacci 2 // 1
//Start = tribonacci -4 // "invalid argument"
