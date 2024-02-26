-- ## Basic Syntax:
{-
  > 6 + 3^2 * 4
  42
  42 is a nice even number, but what about the first 10 even numbers after it?

  > take 10 (filter even [43..])
  [44,46,48,50,52,54,56,58,60,62]
  What is the sum of those?

  > sum it
  530
-}

-- ===============================================

-- ### Commenting the code:
{-
  Use double dash to comment within a single line of code.

  {-
    Use curly bracket with a single dash to
      open and close
    multi-line comments.
  -}
-}

-- ===============================================

-- ### Defining functions
greaterThan18 :: (Ord a, Num a) => a -> Bool
greaterThan18 x = x > 18

-- ### Using functions
-- ghci > greaterThan18 3
-- False

-- 1. A function that adds 6 numbers:
add6Numbers :: (Num a) => a -> a -> a -> a -> a -> a -> a
add6Numbers a b c d e f = a + b + c + d + e + f

-- ghci > add6numbers  1 2 3 4 5 6
-- 21

-- 2. A function that calculates the volume of a cylinder
volumeOfCylinder :: (Floating a) => a -> a -> a
volumeOfCylinder r h = pi * r ^ 2 * h -- pi represents the number π, and it comes with Haskell
-- ghci > volumeOfCylinder 4 5
-- 251.32741228718345

-- 3. A function that takes the temperature in Fahrenheit and returns it in Celsius
fToc :: (Fractional a) => a -> a
fToc x = (x - 32) * 5 / 9

-- ghci > fToc 212
-- 100.0

-- ===============================================

{-
  ### Haskell type system:
  ** Haskell is statically typed**. And, in Haskell, **every expression has a type**.
-}

-- ===============================================

-- ## Laziness
{-
    ** Haskell is lazy. This means that it won't evaluate expressions until their results are needed**
    Examples of Haskell laziness in practice:
    * We can use infinite lists.
-}

giveMe :: (Num a, Enum a) => Int -> [a]
giveMe x = take x [1 ..] -- [1..] is an infinite list of natural numbers that starts at 1.

-- * Haskell won't evaluate expressions if they aren't needed

cheapComputation :: Integer
cheapComputation = 7

expensiveComputation :: Integer
expensiveComputation = sum [1 .. 10000000] -- sum is a function that takes a list and returns the sum of all the elements. This will crash the kernel.

printLazyExample :: IO ()
printLazyExample = do
  let result = if cheapComputation > 5 || expensiveComputation > 5 then "Done" else "This won't ever show because expensiveComputation is always bigger than 5"
  putStrLn result

{-
  Try running this cell with cheapComputation being bigger and smaller than 5.
  When cheapComputation > 5, expensiveComputation isn't evaluated because it is not needed.
-}

-- ghci > printLazyExample
-- Done

-- ===============================================

-- Conclusion:
{-
  #### Haskell is a statically typed, **lazy**, functional programming language with **explicit effects** and functions that look like this:
  volumeOfACylinder r h = pi * r ^ 2 * h
  Note: Haskell has other important properties (like algebraic data types, type classes, type inference, polymorphism, ...) that we'll cover in future lessons.
-}
