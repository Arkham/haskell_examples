-- Functions

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x =
  if x > 100
  then x
  else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

marioRossi = "Ciao, sono Mario"

-- Lists

lostNumbers = [4,8,15,16,23,42]

listSum = [1,2,3] ++ [4,5,6]
stringSum = "hello" ++ ", world"
charSum = ['w','o'] ++ ['o','t']

consOp = 'A':" SMALL CAT"
consComp = [1,2,3] == 1:2:3:[]

steveChar = "Steve Jobs" !! 6
pieChar = [3,1,4,1,5,9] !! 2

listCeption = [7]:([[1,2,3,4,5],[1,5,8,11],[1,9,18]] ++ [[6,6,6]])
listComparison =
  [
    [3,2,1] > [2,1,0],
    [3,2,1] > [2,9,9],
    [3,4,2] > [3,4],
    [3,4,2] > [2,4],
    [3,4,2] == [3,4,2]
  ]

example = [1,2,3,4,5]
headLast =
  [
    head example,
    last example
  ]
tailInitReverse =
  [
    tail example,
    init example,
    reverse example
  ]

listLen = length example
listNotNull = null example
listNull = null []

takeDrop =
  [
    take 3 example,
    drop 3 example
  ]

manipulations =
  [
    maximum example,
    minimum example,
    sum example,
    product example
  ]

elemPresence =
  [
    666 `elem` example,
    1 `elem` example
  ]

-- Texas Ranges

numRange = [1..20]
charRange = ['a'..'h']
twoRange = [2,4..20]
threeRange = [3,6..20]
reverseRange = [20,19..1]
thirteenMultiples = take 24 [13,26..]
cycle123 = take 10 (cycle [1,2,3])
lolCycle = take 11 (cycle "LOL ")
sameNumber = take 12 (repeat 4)
replicateNumber = replicate 5 25

-- List Comprehension

twoComprehension = [x*2 | x <- [1..10]]
twoComprehension' = [x*2 | x <- [1..10], x*2 >= 12]
mod7is3Comprehension = [ x | x <- [50..100], x `mod` 7 == 3]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

excludeCommprehension = [ x | x <- [1..20], x /= 13, x /= 15, x /= 17]
cartesianComprehension = [ x*y | x <- [1..4], y <- [2..5]]
cartesianComprehension' = [ x*y | x <- [1..4], y <- [2..5], x*y > 10]

funnyAdjectives = ["lazy", "stupid", "creepy"]
funnyNames = ["hobo", "fuck", "derp"]
usernameComprehension = [adj ++ " " ++ name | adj <- funnyAdjectives, name <- funnyNames]

length' xs = sum [1 | _ <- xs]
removeNonUppercase str = [ c | c <- str, c `elem` ['A'..'Z']]
removeNestedOdds xs = [ [ n | n <- nested, odd n ] | nested <- xs]

-- Tuples

pointTuples = [(0,0), (1,0), (3,2)]
peopleTuples = [("Christopher", "Walken", 46), ("Ju", "Liu", 26)]
myTuple = (1,2)
firstEl = fst myTuple
secondEl = snd myTuple
zippedElems = zip [1,2,3,4,5] [6,7,8,9,10]
infiniteZip = zip ["foo", "bar", "sausage"] [1..]

allTriangles = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]
rightTriangles = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2]
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
rightTriangles'' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24 ]
