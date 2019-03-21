guess   :: (Int, Int) -> IO()
guess (x, y)
    | x == y    = putStrLn "You guessed it! good job!"
    | x > y     = do 
        putStrLn "Didn't guess it... The number I'm thinking of is bigger"
        line <- getLine
        guess(31, (read line :: Int))
    | x < y     = do
        putStrLn "Didn't guess it... The number I'm thinking of is smaller"
        line <- getLine
        guess(31, (read line :: Int))

main = do
    putStrLn "I think of a number... Can you guess it?"
    line <- getLine
    let x = read line :: Int
    guess(31, x)