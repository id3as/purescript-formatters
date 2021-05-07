let base = ./spago.dhall

in    base
    ⫽ { sources =
          base.sources # [ "test/**/*.purs" ]
      , dependencies =
          base.dependencies # [ "assert", "effect", "console", "debug", "erl-test-eunit"]
      }
