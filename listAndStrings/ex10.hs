func    :: [Int] -> [Int] -> Int -> [Int]
func list1 list2 len
    | len == -1      = []
    | mod len 2 == 0 = do
        let val = toInteger(((len + 2) / 2))
        list1 !! val : func list1 list2 (len - 1)
    | otherwise      = list2 !! ((len + 1) / 2) : func list1 list2 (len - 1)

main = do
    let list1 = [1,3,5]
    let list2 = [2,4,6]

    print (func list1 list2 (length list1 + length list2 - 2))