-- Type
-- :t shows the type of the expression

-- ghci> :t 'a'
-- 'a' :: Char

-- ghci> :t True
-- True :: Bool

-- ghci> :t "Hello"
-- "Hello" :: [Char]

-- ghci> :t (True, 'a')
-- (True, 'a') :: (Bool, Char)

-- ghci> :t 4 == 5
-- 4 == 5 :: Bool

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase str = [ c | c <- str, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Standard types: Int, Integer, Float, Double, Bool, Char, String

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- Type variables

-- ghci> :t head
-- head :: [a] -> a

-- a is a type variable, it stands for any type
-- polymorphic functions

-- ghci> :t fst
-- fst :: (a, b) -> a

-- fst takes only a tuple made of two elements and returns something of the first type
-- even though a and b are different type variables, they could be the same type aswell

-- Typeclasses

-- a typeclass is like an interface, it describes what is supported by the type, i.e.

-- ghci> :t (==)
-- (==) :: Eq a => a -> a -> Bool

-- everything before the => is called the class constraint; the == operator requires the Eq typeclass
-- Any type where it makes sense to test for equality should belong to the Eq class

-- ghci> :t elem
-- elem :: Eq a => a -> [a] -> Bool
-- Even elem requires the Eq class because it uses == to test for inclusion

-- Basic Typeclass

-- Eq, used for types which support equality testing; each members should implement == and /=

-- ghci> 5 == 5
-- True
-- ghci> 5 /= 5
-- False

-- Ordering, which may be GT, EQ or LT
-- Ord, for types with ordering; it supports >, <, >= and <=; also `compare` returns an Ordering
-- to be a member of Ord, a type must belong to Eq

-- ghci> 5 >= 3
-- True
-- ghci> 5.4 < 5.6
-- True
-- ghci> 5 `compare` 7
-- LT

-- members of Show can be presented as Strings

-- ghci> show 5
-- "5"
-- ghci> show True
-- "True"
-- ghci> show 5.45
-- "5.45"

-- members of read can be read from a String

-- ghci> read "5" - 4
-- 1
-- ghci> read "[5]" ++ [4]
-- [5,4]
-- ghci> read "True" || False
-- True

-- haskell automatically understands the type from the context of the expression
-- ghci> :t read
-- read :: Read a => String -> a

-- ghci> read "4" :: Int
-- 4
-- ghci> read "4" :: Double
-- 4.0
-- ghci> read "(3, 'a')" :: (Float, Char)
-- (3.0,'a')

-- Enum members are sequentially ordered types, for which ranges, `succ` and `pred` make sense

-- ghci> ['a'..'f']
-- "abcdef"
-- ghci> [1..5]
-- [1,2,3,4,5]
-- ghci> [LT .. GT]
-- [LT,EQ,GT]

-- Bounded members have a lower and upper bound

-- ghci> minBound :: Int
-- -9223372036854775808
-- ghci> minBound :: Char
-- '\NUL'
-- ghci> minBound :: Bool
-- False
-- ghci> maxBound :: Bool
-- True

-- ghci> :t minBound
-- minBound :: Bounded a => a
-- polymorphic constants?

-- Num, for types which behave like numbers, i.e. Int, Integer, Float, Double

-- ghci> :t 35
-- 35 :: Num a => a

-- most operations require that both operands are of the same type

-- ghci> :t (*)
-- (*) :: Num a => a -> a -> a
-- ghci> (5) * (6)
-- 30
-- ghci> (5 :: Int) * (6)
-- 30
-- ghci> (5 :: Int) * (6 :: Integer)
-- <interactive>:98:15:
--     Couldn't match expected type `Int' with actual type `Integer'
--     In the second argument of `(*)', namely `(6 :: Integer)'
--     In the expression: (5 :: Int) * (6 :: Integer)
--     In an equation for `it': it = (5 :: Int) * (6 :: Integer)

-- Integral, includes all integral numbers
-- Floating, include all floating, i.e. Float and Double

-- fromIntegral turns Int or Integer into Num
-- ghci> :t fromIntegral
-- fromIntegral :: (Integral a, Num b) => a -> b

-- useful with length
-- ghci> :t length
-- length :: [a] -> Int

-- ghci> length [1..2] + 4.3
-- <interactive>:102:17:
--     No instance for (Fractional Int)
--       arising from the literal `4.3'
--     Possible fix: add an instance declaration for (Fractional Int)
--     In the second argument of `(+)', namely `4.3'
--     In the expression: length [1 .. 2] + 4.3
--     In an equation for `it': it = length [1 .. 2] + 4.3
-- ghci> fromIntegral (length [1..2]) + 4.3
-- 6.3
