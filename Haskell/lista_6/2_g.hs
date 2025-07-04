-- Questão 2 item G
sum_of_first_n :: Int -> Int
sum_of_first_n 0 = 0
sum_of_first_n n = n + sum_of_first_n (n - 1)

main = do
    let result1 = sum_of_first_n 5   -- deve retornar 15 (1+2+3+4+5)
    let result2 = sum_of_first_n 10  -- deve retornar 55
    print result1
    print result2
