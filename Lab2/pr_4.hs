main = do
  putStr (show (listLength [1,2,3,4,5,6,7])) 

listLength :: [getElem] -> Int 

listLength getElem 
  | null getElem = error "Size fuuu"
  |otherwise  = length getElem