data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                 (Branch 2 Empty Empty)

main =  do 
  print (count tree4)  

count :: Tree a -> Int
count Empty = 0
count (Branch _ Empty Empty) = 1
count (Branch _ x1 x2) = count x1 + count x2