data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

main =  do print $ show (take 4 $ hbalTree 'x' 3)    

hbalTree f 0 = [Empty]
hbalTree f 1 = [Branch f Empty Empty]
hbalTree f x = [Branch f g h | (a, b) <- [(x-2, x-1), (x-1, x-1), (x-1, x-2)], g <- hbalTree f a, h <- hbalTree f b]
