main = do
    -- let list = 69 : 63 : 167 : 2 : 48 : []
    -- let filteredList = [list !! y | y <- [0..(length list - 1)], mod y 2 == 1 ]
    -- print filteredList
    print (let list = [0..9] in [list !! y | y <- [0..(length list - 1)], mod y 2 == 1])