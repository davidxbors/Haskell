import Data.Time.Clock
import Data.Time.Calendar

main = do
    putStrLn "How many leap years to generate?"
    line <- getLine
    let howMany = read line :: Integer

    now <- getCurrentTime
    let (currentYear, month, day) = toGregorian $ utctDay now

    let leapYears = [x | x <- [currentYear..(currentYear + (4 * howMany))], mod x 4 == 0]
    print (length leapYears)
    print leapYears