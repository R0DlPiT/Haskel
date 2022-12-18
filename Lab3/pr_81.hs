main =  do print $ show (path 2 5  [(1,2),(2,3),(1,3),(3,4),(4,5)])

path :: Eq a => a -> a -> [(a, a)] -> [[a]]
path q w z
    | q == w = [[w]]
    | otherwise = [ 
        [q] ++ path | gum <- z, (fst gum) == q, 
        path <- path (snd gum) w [e | e <- z, e /= gum]]