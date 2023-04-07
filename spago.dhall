{ name = "fetch-argonaut"
, dependencies =
  [ "aff"
  , "argonaut"
  , "console"
  , "effect"
  , "either"
  , "foreign"
  , "prelude"
  , "transformers"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, license = "MIT"
, repository = "https://github.com/rowtype-yoga/purescript-fetch-argonaut.git"
}
