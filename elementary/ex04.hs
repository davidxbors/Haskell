summ :: Integer -> Integer
summ 0 = 0
summ x = x + summ(x-1)

main = do
    putStrLn "Write a number:"
    line <- getLine
    let x = read line :: Integer
    let ret = summ x
    -- putStrLn "Done."
    print ret