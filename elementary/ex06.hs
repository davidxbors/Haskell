productt :: Integer -> Integer
productt 1 = 1
productt x = x * productt(x-1)

summ     :: Integer -> Integer
summ 0 = 0
summ x = x + summ(x-1)

main = do
    putStrLn "Write a number"
    line <- getLine
    let x = read line :: Integer
    putStrLn "Dou you want to compute summ or productt [s / p]"
    line <- getLine
    if line == "p"
        then (let val = productt(x) in print val)
    else if line == "s"
        then (let val = summ(x) in print val)
    else putStrLn "Op not admitted"