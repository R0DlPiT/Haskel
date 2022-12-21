main = do
    print . dupli $ [1, 2, 3, 4, 5]

dupli  :: [a] -> [a]
dupli = myFoldr (\ x xs -> x : x : xs) []

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f z []     = z
myFoldr f z (x:xs) = f x (myFoldr f z xs)  
