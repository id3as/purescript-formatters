{ name = "formatters"
, backend = "purerl"
, dependencies =
  [ "arrays"
  , "bifunctors"
  , "control"
  , "datetime"
  , "either"
  , "enums"
  , "foldable-traversable"
  , "integers"
  , "lists"
  , "math"
  , "maybe"
  , "newtype"
  , "numbers"
  , "ordered-collections"
  , "parsing"
  , "partial"
  , "prelude"
  , "psci-support"
  , "strings"
  , "transformers"
  , "tuples"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs"]
}
