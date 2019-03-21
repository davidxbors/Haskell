-- asks u ur name and then welcomes you
--main :: IO()
main = do
    putStrLn "What's ur name?"
    line <- getLine
    putStrLn ("Hello, " ++ line ++ "!")