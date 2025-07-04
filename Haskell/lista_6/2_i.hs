-- Questão 2 item I
arithmetic_progression_sum :: Int -> Int -> Int -> Int
arithmetic_progression_sum _ _ 0 = 0
arithmetic_progression_sum a r n = a + arithmetic_progression_sum (a + r) r (n - 1)

main = do
    let result1 = arithmetic_progression_sum 1 1 5   -- deve retornar 15 (1+2+3+4+5)
    let result2 = arithmetic_progression_sum 2 3 4   -- deve retornar 26 (2+5+8+11)
    print result1
    print result2
