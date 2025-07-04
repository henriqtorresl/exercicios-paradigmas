fazerBolos a b c =
    if qntXicaras == qntFarinha && qntFarinha == qntLeite then
        qntXicaras
    else 
        minimum [qntXicaras, qntFarinha, qntLeite]
    where
        qntXicaras = a `div` 2
        qntFarinha = b `div` 3
        qntLeite = c `div` 5

main = do
    input <- getLine
    let list = words input
    let numbers = map (\e -> read e :: Int) list 
    let a = head numbers
    let b = head $ tail numbers
    let c = head $ tail $ tail numbers

    let qntBolos = fazerBolos a b c

    print qntBolos