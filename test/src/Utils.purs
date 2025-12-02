module Test.Utils where

import Prelude
import Control.Monad.Free (Free)
import Data.Date (canonicalDate)
import Data.DateTime (DateTime(..))
import Data.Enum (toEnum)
import Data.Foldable (class Foldable, traverse_)
import Data.Maybe (fromMaybe)
import Data.Time (Time(..))
import Effect (Effect)
import Erl.Test.EUnit (TestF, suite, test)
import Test.Assert (assertEqual)

forAll ∷ ∀ a f. Foldable f ⇒ (a → String) → String → f a → (a → Effect Unit) → Free TestF Unit
forAll itTitle title arb f =
  suite title do
    traverse_
      ( \a → do
          test (itTitle a) (f a)
      )
      arb

shouldEqual :: forall a. Show a => Eq a => a -> a -> Effect Unit
shouldEqual actual expected = assertEqual { expected, actual }

makeDateTime :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> DateTime
makeDateTime year month day hour minute second millisecond =
  DateTime
    ( canonicalDate
        (fromMaybe bottom $ toEnum year)
        (fromMaybe bottom $ toEnum month)
        (fromMaybe bottom $ toEnum day)
    )
    ( Time
        (fromMaybe bottom $ toEnum hour)
        (fromMaybe bottom $ toEnum minute)
        (fromMaybe bottom $ toEnum second)
        (fromMaybe bottom $ toEnum millisecond)
    )
