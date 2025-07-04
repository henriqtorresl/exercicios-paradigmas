-- Questão 2 item K
binomial :: Int -> Int -> Int
binomial n 0 = 1
binomial n m
  | n == m    = 1
  | otherwise = binomial (n - 1) (m - 1) + binomial (n - 1) m

main = do
    let result1 = binomial 5 2   -- deve retornar 10
    let result2 = binomial 6 3   -- deve retornar 20
    print result1
    print result2
