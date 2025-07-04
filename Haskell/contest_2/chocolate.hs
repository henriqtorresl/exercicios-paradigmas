contarPedacos 0 qnt = qnt
contarPedacos l qnt =
        if l >= 2 then
            contarPedacos (l `div` 2) (qnt * 4)
        else 
            contarPedacos 0 qnt

main = do
    l <- readLn :: IO Int
    let qnt = contarPedacos l 1
    print qnt