module Test.Main where

import Prelude
import Effect (Effect)
import Erl.Test.EUnit (runTests)
import Test.DateTime (datetimeTest)
import Test.Interval (intervalTest)
import Test.Number (numberTest)

main ∷ Effect Unit
main =
  void
    $ runTests do
        intervalTest
        datetimeTest
        numberTest
