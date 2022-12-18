main = do 
  print (insertAt 'Z' "a b c d" 2)

insertAt :: a -> [a] -> Int -> [a]
insertAt x ys n
    | null ys = [x]
    | n <= 1 = x : ys
    | otherwise = head ys : insertAt x (tail ys) (n - 1)