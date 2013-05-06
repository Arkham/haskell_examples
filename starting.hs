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

