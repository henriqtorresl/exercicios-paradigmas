verificarOndeCaiu (x, y) =
        if verificarX == "dentro" && verificarY == "dentro" then
            "dentro"
        else
            "fora"
    where
        verificarX = if x >= 0 && x <= 432 then "dentro" else "fora"
        verificarY = if y >= 0 && y <= 468 then "dentro" else "fora"


main = do
    input <- getLine
    let list = words input
    let numbers = map (\e -> read e :: Int) list 
    let x = head numbers
    let y = head $ tail numbers

    let resultado = verificarOndeCaiu (x, y)

    putStrLn resultado