-- Questão 2 item H
sum_of_first_n_squares :: Int -> Int
sum_of_first_n_squares 0 = 0
sum_of_first_n_squares n = n * n + sum_of_first_n_squares (n - 1)

main = do
    let result1 = sum_of_first_n_squares 3   -- deve retornar 14 (1^2+2^2+3^2)
    let result2 = sum_of_first_n_squares 5   -- deve retornar 55
    print result1
    print result2
