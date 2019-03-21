summ    :: Integer -> Double
summ k
    | k == 1 = value k
    | otherwise = value k + summ (k - 1)

value   :: Integer -> Double
value k = do
    let x = fromIntegral $ k
    ( ( (-1) ** (x + 1) ) / (2 * x - 1) )
-- value x = fromIntegral $ x

main = do
    let k = 100 -- done only for 10 ** 2 because couldn't verify more
    -- let k = 5
    print (summ k)