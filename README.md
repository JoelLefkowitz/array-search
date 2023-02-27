# Array search

Array search functions.

## Status

| Source     | Shields                                                       |
| ---------- | ------------------------------------------------------------- |
| Project    | ![latest_release] ![license] ![line_count] ![language_count]  |
| Health     | ![documentation] ![review_action] ![codacy_quality]           |
| Repository | ![open_issues] ![closed_issues] ![open_pulls] ![closed_pulls] |
| Activity   | ![contributors] ![monthly_commits] ![last_commit]             |

## Installation

```bash
bower install purescript-array-search
```

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

- `purescript-arrays` provides `find`, `findLast`, `findIndex` and `findLastIndex`
- `findEach` is synonymous with `filter`

## Tests

To run tests:

```bash
pulp test
```

## Documentation

This repository's documentation is hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-array-search).

To generate the documentation locally:

```bash
pulp docs
```

## Linters

To run linters:

```bash
nps lint
```

## Formatters

To run formatters:

```bash
nps format
```

## Continuous integration

This repository uses GitHub Actions to lint and test each commit. Each commit should be formatted and its corresponding documentation should be updated.

## Versioning

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [semver](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

## Changelog

Please read this repository's [changelog](CHANGELOG.md) for details on changes that have been made.

## Contributing

Please read this repository's guidelines on [contributing](CONTRIBUTING.md) for details on the process for submitting pull requests. Moreover, our [code of conduct](CODE_OF_CONDUCT.md) declares our collaboration standards.

## Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<p align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</p>

[latest_release]: https://img.shields.io/github/v/tag/joellefkowitz/purescript-array-search "Latest release"
[license]: https://img.shields.io/github/license/joellefkowitz/purescript-array-search "License"
[line_count]: https://img.shields.io/tokei/lines/github/joellefkowitz/purescript-array-search "Line count"
[language_count]: https://img.shields.io/github/languages/count/joellefkowitz/purescript-array-search "Language count"
[documentation]: https://pursuit.purescript.org/packages/purescript-array-search/badge "Documentation"
[review_action]: https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/purescript-array-search/review.yml "Review action"
[codacy_quality]: https://img.shields.io/codacy/grade/a234d28178cf4a1b8bca450fdc432f77 "Codacy quality"
[open_issues]: https://img.shields.io/github/issues/joellefkowitz/purescript-array-search "Open issues"
[closed_issues]: https://img.shields.io/github/issues-closed/joellefkowitz/purescript-array-search "Closed issues"
[open_pulls]: https://img.shields.io/github/issues-pr/joellefkowitz/purescript-array-search "Open pull requests"
[closed_pulls]: https://img.shields.io/github/issues-pr-closed/joellefkowitz/purescript-array-search "Closed pull requests"
[contributors]: https://img.shields.io/github/contributors/joellefkowitz/purescript-array-search "Contributors"
[monthly_commits]: https://img.shields.io/github/commit-activity/m/joellefkowitz/purescript-array-search "Monthly commits"
[last_commit]: https://img.shields.io/github/last-commit/joellefkowitz/purescript-array-search "Last commit"
