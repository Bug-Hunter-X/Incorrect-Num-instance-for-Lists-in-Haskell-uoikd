{-# LANGUAGE FlexibleInstances #-}

{-# LANGUAGE UndecidableInstances #-}

-- Avoid creating a Num instance for lists altogether.
-- Instead, use different data types for different purposes.

-- For example, if you need to perform numerical operations on collections of numbers,
-- consider using a data structure better suited for numerical computation, such as a vector.

main :: IO ()
main = print $ sum [1, 2] -- Using sum instead of custom Num instance
-- Or, perhaps better: use Vector from the vector package
-- import qualified Data.Vector as V
-- main :: IO ()
-- main = print $ V.sum (V.fromList [1, 2])