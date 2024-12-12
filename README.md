# Incorrect Num Instance for Lists in Haskell

This example demonstrates a common error in Haskell: attempting to create a `Num` instance for lists that's not semantically valid.  While you can define `(+)` using `mappend` for concatenation, the rest of the `Num` operations are not well-defined.  The solution provides a way to better understand this error.