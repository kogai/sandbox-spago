module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Main as Main

id :: ∀ a. a -> a
id x = x

main :: Effect Unit
main = do
  Main.main
  let ten = show $ id 10
  log $ "You should add some tests." <> ten
