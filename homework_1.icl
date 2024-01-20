module HW1

import StdEnv

/*
Please write your NEPTUN code here: HHFX00

Your submission should not have any errors when running the code.
You'll receive a total of 100 points when you successfully solve both problems,
with 50 points awarded for each.

You should not delete anything from the given code, given test cases should stay the same, but you can add 
your tests as well. Don't change the given function signatures. 

Make sure that you comment all 'Start'-s before submitting the code.
*/

/*
Task 1:

Write a function that will check if two given characters are the same case.

    If either of the characters is not a letter, return -1
    If both characters are the same case, return 1
    If both characters are letters, but not the same case, return 0
    
It's important that you use the ASCII table!

Examples:

'a' and 'g' returns 1

'A' and 'C' returns 1

'b' and 'G' returns 0

'B' and 'g' returns 0

'0' and '?' returns -1

Hint: Use fromChar() function to get the ASCII value of a character.
*/

compare_letters :: Char Char -> Int
compare_letters c1 c2
| fromChar c1 < 65 || fromChar c2 < 65 || fromChar c1 > 122 || fromChar c2 > 122 || (fromChar c1 > 90 && fromChar c1 < 97) || (fromChar c2 > 90 && fromChar c2 < 97) = -1
| (fromChar c1 > 96 && fromChar c2 < 97) || (fromChar c2 > 96 && fromChar c1 < 97) = 0
= 1
//Start = compare_letters 'A' '*' // -1
//Start = compare_letters '0' 'Z' // -1
//Start = compare_letters 'A' 'Z' // 1
//Start = compare_letters 'a' 'z' // 1
//Start = compare_letters 'a' 'Z' // 0
//Start = compare_letters 'z' 'A' // 0

/*
Task 2:

Columns are a definitive attribute of the classical architectural style.

A building has a certain number of columns of the same diameter and the
distances between the columns are the same.

You are given the number of the columns, their diameter and the distance 
between them. Calculate the length of the building.

Be careful to check for wrong input (the inputs cannot be negative or zero)
If the input is wrong, abort the funtion with the text "wrong input"

*/

building_length :: Int Int Int -> Int
building_length number diameter distance
| number < 1 || diameter < 1 || distance < 1 = abort "wrong input"
= diameter * number + distance * (number - 1)

//Start = building_length 2 10 20 // 40
//Start = building_length 5 15 25 // 175
//Start = building_length 3 13 24 // 87
//Start = building_length 5 0 25 // "wrong input"
//Start = building_length -1 15 25 // "wrong input"
