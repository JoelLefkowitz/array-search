{ name = "purescript-array-search"
, version = "0.2.0"
, repository = "https://github.com/JoelLefkowitz/purescript-array-search"
, license = "MIT"
, dependencies = 
    [ "prelude"
    , "maybe"
    , "foldable-traversable"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
