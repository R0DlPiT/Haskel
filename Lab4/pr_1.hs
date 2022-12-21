main = do
    putStrLn(show(last' [1, 2, 3, 4, 5, 6]))
    putStrLn(show(last' ['a', 'b', 'c', 'd']))

last' :: [a] -> a
last' = foldl1 (const id)