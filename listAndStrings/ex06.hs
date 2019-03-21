main = do
    putStrLn "Type the string you want to test"
    line <- getLine
    let s = read $ show line :: String
    print ( s == reverse s )