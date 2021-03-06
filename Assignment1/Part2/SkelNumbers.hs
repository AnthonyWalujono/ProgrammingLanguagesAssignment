-- Haskell module generated by the BNF converter

{-# OPTIONS_GHC -fno-warn-unused-matches #-}

module SkelNumbers where

import Prelude (($), Either(..), String, (++), Show, show)
import qualified AbsNumbers

type Err = Either String
type Result = Err String

failure :: Show a => a -> Result
failure x = Left $ "Undefined case: " ++ show x

transExp :: AbsNumbers.Exp -> Result
transExp x = case x of
  AbsNumbers.Plus exp1 exp2 -> failure x
  AbsNumbers.Times exp1 exp2 -> failure x
  AbsNumbers.Minus exp1 exp2 -> failure x
  AbsNumbers.Divide exp1 exp2 -> failure x
  AbsNumbers.Modulus exp1 exp2 -> failure x
  AbsNumbers.Exponent exp1 exp2 -> failure x
  AbsNumbers.Num integer -> failure x
  AbsNumbers.Negative exp -> failure x
  AbsNumbers.Absolute exp -> failure x
