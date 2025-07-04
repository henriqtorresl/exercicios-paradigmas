-- Questão 2 item F
power :: Int -> Int -> Int
power _ 0 = 1
power a n = a * power a (n - 1)

main = do
    let result1 = power 2 5   -- deve retornar 32
    let result2 = power 3 3   -- deve retornar 27
    print result1
    print result2
