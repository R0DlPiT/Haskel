-- функция filter
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x: xs)
    | f x = x : filter' f xs
    | otherwise = filter' f xs

-- функция flip
flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x

-- функция map
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

-- функция replicate
myReplicate :: Int -> a -> [a]
myReplicate n x
  | n <= 0 = []
  | otherwise = x : myReplicate (n - 1) x

-- функция const
myConst x _ = x