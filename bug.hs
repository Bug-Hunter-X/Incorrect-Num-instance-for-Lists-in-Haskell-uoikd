{-# LANGUAGE FlexibleInstances #-}

{-# LANGUAGE UndecidableInstances #-}

instance Monoid a => Monoid [a] where
  mempty = []
  mappend = (++)

instance (Num a, Monoid a) => Num [a] where
  (+) = mappend
  (*) = undefined -- (*) is not defined for lists
  (-) = undefined -- (-) is not defined for lists
  abs = undefined -- abs is not defined for lists
  signum = undefined -- signum is not defined for lists
  fromInteger = undefined -- fromInteger is not defined for lists

main :: IO ()
main = print (1 :+ 2)