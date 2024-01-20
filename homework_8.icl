module HW8gr4
import StdEnv


/*
Please write your NEPTUN code here:

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
We define a type Rect for rectangles that are parallel to the axes in a
Cartesian coordinate system. We represent a rectangle by its lower left
endpoint using the Point type.

Find the sum of the areas of all the rectangles, whose lower left endpoint values
are nonnegative (>= 0).
*/

:: Point = {
		x :: Int,
		y :: Int
		}
		
:: Rect = {
		pos :: Point,
		width :: Int, 
		height :: Int
		}
		
r1 = { pos = {x = -5, y = 0}, width = 10, height = 10 }
r2 = { pos = {x = 0, y = -3}, width = 5, height = 10 }
r3 = { pos = {x = 0, y = 1}, width = 25, height = 25 }
r4 = { pos = {x = 10, y = 12}, width = 1, height = 1 }
r5 = { pos = {x = 12, y = 11}, width = 3, height = 24 }
r6 = { pos = {x = -32, y = 4}, width = 4, height = 24 }
r7 = { pos = {x = 0, y = 0}, width = 5, height = 12 }
r8 = { pos = {x = 4, y = -3}, width = 22, height = 21 }
r9 = { pos = {x = -100, y = -4}, width = 23, height = 22 }
		
		
		
//sum_areas :: [Rect] -> Int

//Start = sum_areas [r1, r2, r3] // 625
//Start = sum_areas [r1, r2, r3, r4, r5, r6, r7, r8, r9] // 758




//Task 2

/*
One suggestion to build a satisfactory password is to start with a memorable phrase
or sentence and make a password by extracting the first letter of each word.

Even better is to replace some of those letters with numbers:
    instead of including l or L put the number 7 in the password;
    instead of including e or E put the number 3 in the password;
    instead of including b or B put the number 8 in the password;

You can be sure that there are no punctiations, and each word (beside the last) is 
succeeded by a space.
*/

//generate :: String -> String

//Start = generate "a A l L e E b B x" // "aA773388x"
//Start = generate "Give me liberty or give me death" // "Gm7ogmd"
//Start = generate "The future belongs To those who Believe in the beauty Pf their dreams" // "Tf8Ttw8it8Ptd"
//Start = generate "Spread love Everywhere You go. Let no One ever come to You without leaving Happier" // "S73Yg7nO3ctYw7H"
//Start = generate "The way to get started is to quit talking and begin doing" // "Twtgsitqta8d"
//Start = generate "Life is trying things to See if they work" // "7itttSitw"
//Start = generate "e" // "3"
//Start = generate "" // ""

