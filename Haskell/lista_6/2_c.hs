-- Questão 2 item C
quotient :: Int -> Int -> Int
quotient a b
  | a < b     = 0
  | otherwise = 1 + quotient (a - b) b

main = do
    let result1 = quotient 17 5   -- deve retornar 3
    let result2 = quotient 20 4   -- deve retornar 5
    print result1
    print result2
