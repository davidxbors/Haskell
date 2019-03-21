main = do
    let list = 69 : 63 : 167 : 2 : 48 : []
    putStrLn "What element to check if it is or not in list "
    line <- getLine
    (let el = read line :: Int in print (elem el list))