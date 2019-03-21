func    :: Int -> Int
func x = x * x

main = do
    print ( let list = [0..10] in [func x | x <- list] )
