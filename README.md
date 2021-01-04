[![cicd](https://github.com/jmpa-oss/jcleal.me/workflows/cicd/badge.svg)](https://github.com/jmpa-oss/jcleal.me/actions?query=workflow%3Acicd)
[![update](https://github.com/jmpa-oss/jcleal.me/workflows/update/badge.svg)](https://github.com/jmpa-oss/jcleal.me/actions?query=workflow%3Aupdate)

# jcleal.me

```diff
+ My portfolio / blog website.
```

## lint?

Using a <kbd>terminal</kbd>, run:
```bash
./bin/10-lint.sh
```

## deploy?

Using a <kbd>terminal</kbd>, run:
```bash
./bin/20-deploy.sh <path-to-template|template-name>

# for example
./bin/20-deploy.sh cf/template.yml
```

## upload website to s3?

To upload the static compiled website to s3, using a <kbd>terminal</kbd>, run:
```bash
./bin/30-sync.sh
```

## future enhancements

* [x] deploy website (via ci/cd)
* [x] add resume to site
* [x] add ci/cd step to generate pdf from resume.md using https://pandoc.org/
* [ ] add some blog content (eg. a blog post on how this website is managed / deployed)
* [ ] look into creating a custom theme
* [ ] add some javascript charts which demo how to do sorting (eg. bubble sort)