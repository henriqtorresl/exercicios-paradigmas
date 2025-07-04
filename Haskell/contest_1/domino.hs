main = do
    n <- readLn :: IO Int
    let pieces = ((n + 1) * (n + 2)) `div` 2
    print pieces