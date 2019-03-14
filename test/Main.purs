module Test.Main where

import Data.List
import Prelude

import Data.List.Lazy (Pattern(..), fromFoldable)
import Effect (Effect)
import Effect.Console (log)
import Main as Main

id :: ∀ a. a -> a
id x = x

person :: forall a. Show a => { id:: a, name:: String } -> String
person p = show p.id <> ": " <> p.name

join :: String -> List String -> String
join d Nil = ""
join d (Cons x Nil) = x
join d (Cons x xs) = x <> d <> join d xs

main :: Effect Unit
main = do
  Main.main
  let x = person { id : 10, name : "David" }
  let y = person { id : 10.0, name : "Kevin" }
  let z = person { id : true, name : "Stueate" }
  log $ "You should add some tests.\n" <> join "\n" (x:y:z:Nil)
