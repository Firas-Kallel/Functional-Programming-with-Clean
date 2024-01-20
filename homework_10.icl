module HW10gr4
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
Write a function that will find if a given tree contains another tree.

Example: contains (Node 3 (Node 2 Leaf Leaf) (Node 1 Leaf Leaf)) (Node 1 Leaf Leaf) == True

								 3 						1
							   /   \                   / \
							  2     1				  L   L
							 / \   / \
							L   L L   L
						
							
	     contains (Node 3 (Node 2 Leaf Leaf) (Node 4 Leaf Leaf)) (Node 1 Leaf Leaf) == False

								 3 						1
							   /   \                   / \
							  2     4				  L   L
							 / \   / \
							L   L L   L
*/

:: Tree a = Node a (Tree a) (Tree a) | Leaf

instance == (Tree a) | Eq a
where (==) Leaf Leaf = True
      (==) Leaf (Node x ri le) = False
      (==) (Node x ri le) Leaf = False
      (==) (Node x1 le1 ri1) (Node x2 le2 ri2) = x1 == x2 && le1 == le2 && ri1 == ri2

contains :: (Tree Int) (Tree Int) -> Bool
contains Leaf tree2 = tree2 == Leaf
contains (Node x le ri) tree2 = (Node x le ri) == tree2 || contains le tree2 || contains ri tree2

//Start = contains (Node 1 (Node 1 Leaf Leaf) (Node 1 Leaf Leaf)) (Node 1 Leaf Leaf) // True
//Start = contains (Node 3 (Node 2 Leaf Leaf) (Node 4 Leaf Leaf)) (Node 1 Leaf Leaf) // False
//Start = contains (Node 3 (Node 2 Leaf (Node 5 Leaf Leaf)) (Node 4 (Node 2 Leaf Leaf) (Node 1 Leaf Leaf))) (Node 4 (Node 2 Leaf Leaf) (Node 1 Leaf Leaf)) // True
//Start = contains (Node 3 (Node 2 (Node 1 Leaf Leaf) (Node 0 Leaf Leaf)) (Node 4 (Node 5 Leaf Leaf) (Node 6 Leaf Leaf))) (Node 3 (Node 2 (Node 1 Leaf Leaf) (Node 0 Leaf Leaf)) (Node 4 (Node 5 Leaf Leaf) (Node 6 Leaf Leaf))) // True
//Start = contains (Node 3 (Node 2 (Node 1 Leaf Leaf) (Node 0 Leaf Leaf)) (Node 4 (Node 5 Leaf Leaf) (Node 6 Leaf Leaf))) (Node 3 (Node 2 (Node 1 Leaf Leaf) (Node 0 Leaf Leaf)) (Node 4 (Node 5 Leaf Leaf) (Node 8 Leaf Leaf))) // False
//Start = contains Leaf Leaf // True




/*
Define the (<) operator for Binary Search Trees. For the sake of the exercise, we say that
a BSTree is smaller than another if it's minimum value is smaller than the other's minimum value.

Example: (BSNode 3 (BSNode 2 BSLeaf BSLeaf) (BSNode 4 BSLeaf BSLeaf)) < (BSNode 1 BSLeaf BSLeaf) == False

								 3 						1
							   /   \                   / \
							  2     4				  L   L
							 / \   / \
							L   L L   L
							
							  min == 2				 min == 1
							
									  2 < 1 // False
									  
          (BSNode 3 (BSNode 0 BSLeaf BSLeaf) (BSNode 4 BSLeaf BSLeaf)) < (BSNode 1 BSLeaf BSLeaf) == True

								 3 						1
							   /   \                   / \
							  0     4				  L   L
							 / \   / \
							L   L L   L
							
							  min == 0				 min == 1
							
									  0 < 1 // True

You can assume that there are no trees that consist only from a leaf.
*/
:: BSTree a = BSNode a (BSTree a) (BSTree a) | BSLeaf

treeToList :: (BSTree a) -> [a]
treeToList BSLeaf = []
treeToList (BSNode x le ri) = treeToList le ++ [x] ++ treeToList ri

instance < (BSTree a) | Ord a
where (<) tree1 tree2 = (minList o treeToList) tree1 < (minList o treeToList) tree2


//Start = (BSNode 3 (BSNode 2 BSLeaf BSLeaf) (BSNode 4 BSLeaf BSLeaf)) < (BSNode 1 BSLeaf BSLeaf) // False
//Start = (BSNode 3 (BSNode 0 BSLeaf BSLeaf) (BSNode 4 BSLeaf BSLeaf)) < (BSNode 1 BSLeaf BSLeaf) // True
//Start = (BSNode 2 (BSNode 1 BSLeaf BSLeaf) (BSNode 3 BSLeaf BSLeaf)) < (BSNode 2 (BSNode 1 BSLeaf BSLeaf) (BSNode 3 BSLeaf BSLeaf)) // False
//Start = (BSNode 2 (BSNode 0 BSLeaf BSLeaf) (BSNode 3 BSLeaf BSLeaf)) < (BSNode 2 (BSNode 1 BSLeaf BSLeaf) (BSNode 3 BSLeaf BSLeaf)) // True
//Start = (BSNode 2 (BSNode 0 BSLeaf BSLeaf) (BSNode 3 BSLeaf BSLeaf)) < (BSNode 2 (BSNode 1 BSLeaf BSLeaf) (BSNode 3 BSLeaf BSLeaf)) // True
