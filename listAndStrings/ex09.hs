func    :: [Int] -> [Int] -> [Int]
func a b = a ++ b

main = do
    let newList = [ x | x <- [let a = [1..500] in ( let b = [501..1000] in func a b )] ]
    print newList
    -- print ( let a = [1..500] in ( let b = [501..1000] in func a b ))