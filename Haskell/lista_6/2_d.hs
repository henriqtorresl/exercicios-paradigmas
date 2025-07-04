-- Questão 2 item D
greater_common_divisor :: Int -> Int -> Int
greater_common_divisor a 0 = a
greater_common_divisor a b
  | a < b     = greater_common_divisor b a
  | otherwise = greater_common_divisor b (a - b)

main = do
    let result1 = greater_common_divisor 24 18   -- deve retornar 6
    let result2 = greater_common_divisor 100 25  -- deve retornar 25
    print result1
    print result2
