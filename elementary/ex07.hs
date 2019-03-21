main = do
    let multTable = [[x * y | y <- [1..10]] | x <- [1..10]]
    print multTable