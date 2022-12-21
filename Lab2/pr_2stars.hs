mean = go 0 0
  where
    go s l []     = s / fromIntegral l
    go s l (x:xs) = s `seq` l `seq`
                      go (s+x) (l+1) xs

main = print $ mean [0..140]