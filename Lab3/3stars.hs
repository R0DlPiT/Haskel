module Main (main) where

main::IO()
main = print . nodecount $ Node 1 (Node 2 (Node 3 Empty Empty) Empty) (Node 4 Empty (Node 5 Empty Empty))

data Tree a = Empty | Node a (Tree a) (Tree a)

treesum :: Tree Int -> Int
treesum Empty = 0
treesum (Node x left right) = x + treesum left + treesum right

nodecount :: Tree a -> Int
nodecount Empty = 0
nodecount (Node _ left right) = 1 + nodecount left + nodecount right

-- нужная функция
treeavg :: Tree Int -> Int
treeavg Empty = 0
treeavg tree = treesum tree `div` nodecount tree
