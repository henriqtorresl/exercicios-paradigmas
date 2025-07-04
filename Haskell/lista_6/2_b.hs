-- Questão 2 item B
remainder :: Int -> Int -> Int
remainder a b
  | a < b     = a
  | otherwise = remainder (a - b) b

main = do
    let result1 = remainder 17 5   -- deve retornar 2
    let result2 = remainder 20 4   -- deve retornar 0
    print result1
    print result2