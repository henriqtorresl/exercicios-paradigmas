-- Questão 2 item J
geometric_progression_sum :: Int -> Int -> Int -> Int
geometric_progression_sum _ _ 0 = 0
geometric_progression_sum a q n = a + geometric_progression_sum (a * q) q (n - 1)

main = do
    let result1 = geometric_progression_sum 2 2 4   -- deve retornar 30 (2+4+8+16)
    let result2 = geometric_progression_sum 3 3 3   -- deve retornar 39 (3+9+27)
    print result1
    print result2
