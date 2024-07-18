{--
Basic operations in Haskell

All functions support arithmetic operations on integers or floats.
--}

module Operations (
    addNum,
    subNum,
    multNum,
    divNum,
    sumOfSquares,
    lastDigit,
    listProduct
) where

-- add integers or float
addNum :: Num a => a -> a -> a
addNum x y = x + y


-- subtract integers or float
subNum :: Num a => a -> a ->a
subNum x y = x - y


-- multiply integers or float
multNum :: Num a => a -> a -> a
multNum x y = x * y


-- divide integers or float
divNum :: (Num a, Eq a, Fractional a) => a -> a -> a
divNum x y
    | y == 0 = error "Division by zero"
    | otherwise = x / y


-- sum of squares
sumOfSquares :: Num a => a -> a -> a
sumOfSquares x y = addNum (x * x) (y * y)


-- returns last digit
-- only works with int
lastDigit :: Int -> Int
lastDigit x = mod (abs x) 10


-- function that finds a product of all the numbers in the list
-- if the function sees a 0, it returns 0 immediately
listProduct :: [Int] -> Int
listProduct [] = 1
listProduct (x:xs)
    | x == 0 = 0
    | otherwise = x * listProduct xs
