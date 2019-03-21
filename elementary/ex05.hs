auxFun :: Integer -> Integer
auxFun x
    | x `rem` 3 == 0  = x
    | x `rem` 5 == 0  = x
    | otherwise       = 0

specialSum :: Integer -> Integer
specialSum 0 = 0
specialSum x = auxFun(x) + specialSum(x-1)

main = do
    putStrLn "Write a number: "
    line <- getLine
    let x = read line :: Integer
    let val = specialSum(x)
    print val