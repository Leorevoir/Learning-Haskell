{--
Basic string operations in Haskell
--}


-- function that takes start, end positions and string
-- return the substring
subString :: Int -> Int -> [Char] -> [Char]
subString start end str
    | end < 0   = ""
    | start < 0 = take (end + 1) str
    | otherwise = take (end - start + 1) (drop start str)


-- function that returns the sum of the string
sumString :: [Char] -> Int
sumString str = sum (map read (words str))


-- function that duplicates every inputs
duplicate :: [a] -> [a]
duplicate [] = []
duplicate (x:xs) = x : x : duplicate xs


-- function that takes an int, list of int and returns a string
-- saying how many elements of the list are strictly
-- > and < than the given int
lowerAndGreater :: Int -> [Int] -> String
lowerAndGreater n xs =
    let lower_than = length (filter (< n) xs)
        greater_than = length (filter (> n) xs)
    in show n ++ " is greater than "
      ++ show lower_than
      ++ " elements and lower than "
      ++ show greater_than
      ++ " elements."

