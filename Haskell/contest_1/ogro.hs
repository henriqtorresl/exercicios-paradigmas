main = do
    esq <- readLn :: IO Int
    dir <- readLn :: IO Int

    let total = if esq > dir then
                    esq + dir
                else
                    2 * (dir - esq)

    print total