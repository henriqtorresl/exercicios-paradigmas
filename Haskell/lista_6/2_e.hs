-- Questão 2 item E
semifactorial :: Int -> Int
semifactorial n
  | n <= 1    = 1
  | otherwise = n * semifactorial (n - 2)

main = do
    let result1 = semifactorial 7   -- deve retornar 105 (7*5*3*1)
    let result2 = semifactorial 8   -- deve retornar 384 (8*6*4*2)
    print result1
    print result2
