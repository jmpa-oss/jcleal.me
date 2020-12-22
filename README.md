[![lint](https://github.com/jmpa-oss/jcleal.me/workflows/lint/badge.svg)](https://github.com/jmpa-oss/jcleal.me/actions?query=workflow%3Alint)

# jcleal.me

```diff
+ My portfolio / blog website.
```

## run server?

First, using a terminal, run:
```bash
./local.sh
```

Then, run the following to serve the hugo content:
```bash
hugo server -w --bind 0.0.0.0
```

## todo

* deploy website (via ci/cd)
* add some blog content
* add resume to site
* add ci/cd step to generate pdf from resume.md using https://pandoc.org/
* look into creating a custom theme
* add some javascript charts which demo how to do sorting (eg. bubble sort)