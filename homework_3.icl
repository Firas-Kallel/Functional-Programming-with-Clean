module HW3
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
An element in a list is tiny if it is smaller than all elements to its
right. You will be given a list and your task will be to return a list of
all tiny elements. For example:

[1,21,4,7,5] -> [1,4,5] because 1, 4 and 5 are smaller than elments 
						to their right. 
[1,2,3,4,5] -> [1,2,3,4,5]

Notice that the last element is always included. All numbers will
be greater than 0.
*/
tiny :: Int [Int] -> Bool
tiny x xs = and [x < y \\ y <- xs]

tiny_nums :: [Int] -> [Int]
tiny_nums [] = []
tiny_nums [x:xs]
| tiny x xs = [x] ++ tiny_nums xs
= tiny_nums xs

//Start = tiny_nums [1,21,4,7,5] // [1,4,5]
//Start = tiny_nums [2,5,14,3,14,17,16] // [2,3,14,16]
//Start = tiny_nums [66,78,119,99,123,88,55] // [55]
//Start = tiny_nums [11,47,42,15,13,55] // [11,13,55]
//Start = tiny_nums [67,54,27,85,66,24,51,88,49] // [24,49]
//Start = tiny_nums [76,17,25,36,29] //[17,25,29]
//Start = tiny_nums [3,18,37,9,36,47,28] // [3,9,28]


//Task 2
/*
The town sheriff dislikes odd numbers and wants all odd numbered families
out of town! In town crowds can form and individuals are often mixed with
other people and families. However you can distinguish the family they belong
to by the number on the shirts they wear. As the sheriff's assistant it's
your job to find all the odd numbered families and remove them from the town!

You are given a list of numbers. The numbers each repeat a certain number of
times. Remove all numbers that repeat an odd number of times while keeping
everything else the same.

[1, 2, 3, 1, 3, 3] -> [1, 1]
    the number 1 appears twice
    the number 2 appears once
    the number 3 appears three times

	2 and 3 both appear an odd number of times, so they are removed
	from the list. The final result is: [1,1]
*/
count :: Int [Int] -> Int
count x [] = 0
count x [head:tail]
| x == head = 1 + count x tail
= count x tail

odd_out :: [Int] -> [Int]
odd_out xs = [ x \\ x <- xs | isEven (count x xs) ]

//Start = odd_out [1, 2, 3, 1, 3, 3] // [1,1]
//Start = odd_out [26, 23, 24, 17, 23, 24, 23, 26] // [26,24,24,26]
//Start = odd_out [1, 2, 3] // []
//Start = odd_out [1, 2, 2] // [2, 2]
//Start = odd_out [75, 68, 75, 47, 68] // [75, 68, 75, 68]
//Start = odd_out [42, 72, 32, 4, 94, 82, 67, 67] // [67, 67]
//Start = odd_out [100, 100, 5, 5, 100, 50, 68, 50, 68, 50, 68, 5, 100] // [100, 100, 100, 100]
//Start = odd_out [82, 86, 71, 58, 44, 79, 50, 44, 79, 67, 82, 82, 55, 50] // [44, 79, 50, 44, 79, 50]
