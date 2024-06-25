# Array search

Array search functions.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/array-search/review.yml)
![Version](https://pursuit.purescript.org/packages/purescript-array-search/badge)
![Quality](https://img.shields.io/codacy/grade/a234d28178cf4a1b8bca450fdc432f77)

## Installing

```bash
spago install array-search
```

## Documentation

Documentation and more detailed examples are hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-array-search).

## Usage

```purs
> some (\x -> x > 1) [ 1, 2, 3, 4 ]
true

> some (\x -> x > 5) [ 1, 2, 3, 4 ]
false
```

```purs
> every (\x -> x > 0) [ 1, 2, 3, 4 ]
true

> every (\x -> x > 1) [ 1, 2, 3, 4 ]
false
```

```purs
> findEachIndex (\x -> x > 1) [ 1, 2, 3, 4 ]
[1, 2, 3]
```

```purs
> smallest [ 1, 2, 3, 4 ]
1

> largest [ 1, 2, 3, 4 ]
4
```

```purs
> smallestWhere (\x -> x > 1) [ 1, 2, 3, 4 ]
2

> largestWhere (\x -> x > 1) [ 1, 2, 3, 4 ]
4
```

```purs
> smallestAbove 1 [ 1, 2, 3, 4 ]
2

> largestBelow 2 [ 1, 2, 3, 4 ]
1
```

Why provide `findEachIndex` only?
What about `find`, `findLast`, `findIndex`, `findLastIndex` and `findEach`?

- `purescript-arrays` provides `find`, `findLast`, `findIndex` and `findLastIndex`
- `findEach` is synonymous with `filter`

## Tooling

### Dependencies

To install dependencies:

```bash
yarn install
yarn spago install
```

### Tests

To run tests:

```bash
yarn spago test
```

### Documentation

To generate the documentation locally:

```bash
yarn spago docs
```

### Linters

To run linters:

```bash
yarn lint
```

### Formatters

To run formatters:

```bash
yarn format
```

## Contributing

Please read this repository's [Code of Conduct](CODE_OF_CONDUCT.md) which outlines our collaboration standards and the [Changelog](CHANGELOG.md) for details on breaking changes that have been made.

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [SemVer](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

### Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<div align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</div>
