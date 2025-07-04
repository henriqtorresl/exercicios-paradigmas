main = do
    input <- getLine
    let list = words input
    let numbers = map (\e -> read e :: Int) list 

    let sockets = foldl (\ acc e -> (acc + e) - 1) 1 numbers 
    print sockets