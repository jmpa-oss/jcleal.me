[![cicd](https://github.com/jmpa-oss/jcleal.me/workflows/cicd/badge.svg)](https://github.com/jmpa-oss/jcleal.me/actions?query=workflow%3Acicd)

# jcleal.me

```diff
+ My portfolio / blog website.
```

## deploy?

Using a terminal, run:
```bash
./bin/20-deploy.sh <path-to-template|template-name>
```

## local testing?

First, using a terminal, run:
```bash
./local.sh
```

Then, run the following to serve the hugo content:
```bash
hugo server
```

## todo

* deploy website (via ci/cd)
* add some blog content
* add resume to site
* add ci/cd step to generate pdf from resume.md using https://pandoc.org/
* look into creating a custom theme
* add some javascript charts which demo how to do sorting (eg. bubble sort)
