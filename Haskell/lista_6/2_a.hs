-- Questão 2 item A
parity :: Int -> Int
parity 0 = 0
parity 1 = 1
parity n = parity (n-2)

main = do
    let result1 = parity 73    -- retorna 1 se for impar
    let result2 = parity 20    -- retorna 0 se for par

    print result1
    print result2