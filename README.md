# operatorz

This is a package providing useful [binary operators](https://cran.r-project.org/doc/manuals/R-lang.html#Operators) for the R language.

For example, a shortcut for [pasting](https://stat.ethz.ch/R-manual/R-devel/library/base/html/paste.html) strings:

```r
library(operatorz)

p <- "path/" %++% "to/" %++% "a.file"

low_and_up <- letters %++% LETTERS
```

**WARNING** : this project is at the moment essentially a toy project for help me build a package, following the [great advices from experts](https://github.com/jennybc/pkg-dev-tutorial) at user2019 conference.

A lot of things to do, including:
- [ ] adding CI and code coverage
- [ ] set an extensive test suite
