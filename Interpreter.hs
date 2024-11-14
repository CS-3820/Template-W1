module Interpreter (interprete) where

import Language

import Graphics.Rendering.Cairo hiding (x)

-- The state is the current object list, the stack, and the directory
data State = Undefined
  deriving (Show)

interprete :: PSExpr -> Render (Result State)
interprete = undefined

