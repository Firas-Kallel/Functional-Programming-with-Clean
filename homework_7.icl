module HW7gr4
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




/*
	Hint! In clean, strings are arrays of chars, so you can index them the same
	way you do with the arrays:
		"asd".[1] == 's'
		[x \\ x <-: "asd"] == ['a','s','d']
		{x \\ x <-: "asd"} == "asd"
*/

//Task 1

/*
You are given a string and a letter and you need to return the index of the
second occurrence of that letter in the string. If there is no such letter
in the string, then the function should return -1. If the letter occurs only
once in the string, then -1 should also be returned.
*/
strlen :: String -> Int
strlen str = sum [1 \\ c <-: str] 

second_occ :: String Char -> Int
second_occ str c
| length idx > 1 = idx!!1
= -1
where idx = [ i \\ i <- [0.. strlen str - 1] | str.[i] == c]

//Start = second_occ "Hello world!!!" 'l' // 3
//Start = second_occ "Hello world!!!" 'o' // 7
//Start = second_occ "aasdddasssda" 'd' // 4
//Start = second_occ "xaasdddasssda" 'x' // -1
//Start = second_occ "xaasdddasssdax" 'x' // 13
//Start = second_occ "Hello world!!!" 'A' // -1
//Start = second_occ "" 'q' // -1
//Start = second_occ "Hello" '!' // -1


//Task 2

/*
Help the lazy programmer find out if every paranthese is closed.

You are given a string of parentheses. Determine if the order
of the parentheses is valid. The function should return true if the string is
valid, and false if it's invalid.
*/
removeP :: String -> String
removeP "" = ""
removeP str
| str.[0] == '(' && str.[1] == ')' = removeP {str.[i] \\ i <- [2..strlen str - 1]}
= {str.[0]} +++ removeP {str.[i] \\ i <- [1..strlen str - 1]}

para :: String -> Bool
para "" = True
para str
| removeP str == str = False
= para (removeP str)

//Start = para "()" // True
//Start = para "((()))" // True
//Start = para "()()()" // True
//Start = para "(()())()" // True
//Start = para "()(())((()))(())()" // True
//Start = para ")(" // False
//Start = para "()()(" // False
//Start = para "((())" // False
//Start = para "())(()" // False
//Start = para ")()" // False
//Start = para ")" //False
