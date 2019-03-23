merge   :: [Int] -> [Int] -> [Int]
merge l1 l2
    | (length l2) > 0 = (head l1) : (head l2) : (merge (tail l1) (tail l2))
    | otherwise = []


main = do
    let list1 = (filter odd [1..100])
    let list2 = (filter even [1..100])

    print (merge list1 list2)