module HW6gr4
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
	You are given a list, a number and a boolean value.
	Move all the occurances of the given number in the list to the right of
	the list, if the boolean is true, and to left if false.
	
	Example: move_number [1,2,0,3,4,0,5,6,0] 0 False -> [0,0,0,1,2,3,4,5,6]
			 all the zeroes were moved to the left
*/

move_number :: [Int] Int Bool -> [Int]
move_number list n bool 
| bool == False = [x\\x<-list|x==n] ++ [x\\x<-list|x<>n]
= [x\\x<-list|x<>n] ++ [x\\x<-list|x==n]

//Start = move_number [1,2,0,3,4,0,5,6,0] 0 False // [0,0,0,1,2,3,4,5,6]
//Start = move_number [1,2,0,3,4,0,5,6,0] 0 True // [1,2,3,4,5,6,0,0,0]
//Start = move_number [12,0,10,0,8,12,7,6,0,4,10,12,0] 0 True // [12,10,8,12,7,6,4,10,12,0,0,0,0]
//Start = move_number [12,54,65,22,42,12,53,12,55,87] 12 True // [54,65,22,42,53,55,87,12,12,12]
//Start = move_number [12,54,65,22,42,12,53,12,55,87] 10 True // [12,54,65,22,42,12,53,12,55,87]
//Start = move_number [34,21,22,55,23,12] 34 False // [34,21,22,55,23,12]
//Start = move_number [34,21,22,55,23,12] 34 True // [21,22,55,23,12,34]



//Task 2

/*
	It's the end of trick-or-treating and we have a list representing how much
	candy each child in our group has made out with. We don't want the kids to start
	arguing.

	At the same time, we want to reward the ones that recieved a lot of candies. So 
	we want to match the amount of candies each kid recieves to the nth maximum.
	
	You are given the list and the number of the maximum. You need to return the number
	of candies needed to complete the task
	
	Example: candies [1,6,2,4] 2 -> 5
			 
			 firstly, we find the second maximum:
			 	1st maximum is 6
			 	2nd maximum is 4
			 	
			 then we count how many candies we need so that every kid has at least 4 candies:
			 	the first one needs 3
			 	the second does not need extra
			 	the third needs 2
			 	the fourth does not need extra
			 	
			 so the total is 3+2 = 5
*/

candies :: [Int] Int -> Int
candies list n = sum [nth_max - x \\ x<-list | x < nth_max]
where nth_max = (sort list)!!(length list - n)
	
//Start = candies [1,6,2,4] 2 // 5
//Start = candies [1,6,2,4] 1 // 11
//Start = candies [5,8,6,4] 1 // 9
//Start = candies [1,1,1,2] 2 // 0
//Start = candies [1,5,1,1,1,6] 2 // 16
//Start = candies [12,53,23,11,54,23] 3 // 23
