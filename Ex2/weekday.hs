data Weekday
    = Sunday
    | Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday
    | Saturday
    deriving (Show, Eq, Enum, Bounded)


-- returns next weekday
--   ex:
--     >>> nextDay Sunday
--     Monday
--     >>> nextDay Friday
--     Sunday
nextDay :: (Eq a, Enum a, Bounded a) => a -> a
nextDay str = if str == maxBound then minBound else succ str


-- translates int to its right weekday
--   ex:
--     >>> intToDay 1
--     Monday
--     >>> intToDay 9
--     Tuesday
intToDay :: Int -> Weekday
intToDay n = toEnum x::Weekday where
    x = n `mod` 7


-- calculates number of days from the first weekday to the second
-- -1 is because we don't count the current day
--   ex:
--     >>> daysTo Monday Tuesday
--     1
daysTo :: (Eq a, Enum a, Bounded a) => a -> a -> Int
daysTo start end
    | start == end = 0
    | fromEnum start < fromEnum end = succ (fromEnum end - fromEnum start - 1)
    | otherwise = succ (7 + (fromEnum end - fromEnum start))

