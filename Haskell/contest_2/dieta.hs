import Control.Monad

caloriasRestantes refeicoes totalCalorias =
        if caloriasRestantes < 0 then
            0
        else
            caloriasRestantes
    where
        caloriasConsumidas = sum $ map calcularRefeicao refeicoes
        caloriasRestantes = totalCalorias - caloriasConsumidas

calcularRefeicao refeicaoStr = 
        caloriasDaProteina + caloriasDoGordura + caloriasDoCarboidrato
    where
        refeicaoList = words refeicaoStr
        refeicaoNumbers = map (\e -> read e :: Int) refeicaoList
        qntProteina = head refeicaoNumbers
        caloriasDaProteina = qntProteina * 4
        qntGordura = head $ tail refeicaoNumbers
        caloriasDoGordura = qntGordura * 9
        qntCarboidrato = head $ tail $ tail refeicaoNumbers
        caloriasDoCarboidrato = qntCarboidrato * 4

main = do 
    input <- getLine
    let list = words input
    let numbers = map (\e -> read e :: Int) list 
    let n = head numbers
    let m = head $ tail numbers
    refeicoes <- replicateM n getLine

    let restante = caloriasRestantes refeicoes m

    print restante
