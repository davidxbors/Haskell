-- added an extra functionality to the excersie
-- it can merge with the same function both ascending and descending order

oprtr   :: Int -> Int -> Bool
oprtr a b
    | ((mod a 5) <= (mod b 5)) = True
    | otherwise               = False

fun     :: [Int] -> [Int] -> (Int -> Int -> Bool) -> [Int]
fun l1 l2 op
    | op (head l1) (head l2) = (head l1) : (head l2) : (merge (tail l1) (tail l2) op)
    | otherwise = (head l2) : (head l1) : (merge (tail l1) (tail l2) op)

merge   :: [Int] -> [Int] -> (Int -> Int -> Bool) -> [Int]
merge l1 l2 op
    | (length l2) > 0 = fun l1 l2 op
    | otherwise = []


main = do
    let list1 = [1,7,4]
    let list2 = [2,3,9]

    print (merge list1 list2 oprtr)