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
