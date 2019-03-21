main = do
    putStrLn "What's ur name?"
    line <- getLine
    if line == "david" || line == "thomas"
        then putStrLn ("Hello, " ++ line ++ "!")
    else putStrLn "Acces denied!"