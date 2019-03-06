# my-python-examples

[![Maintainability](https://api.codeclimate.com/v1/badges/34f7798c66ab9207ea80/maintainability)](https://codeclimate.com/github/JeffDeCola/my-python-examples/maintainability)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-python-examples/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-python-examples/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

`my-python-examples` _is a place to keep my python code snippets and examples._

These python examples also contain info I gathered from other sources.

View my entire list of python examples on
[my-python-examples GitHub Webpage](https://jeffdecola.github.io/my-python-examples/).

## PYTHON EXAMPLES

_All sections in alphabetical order._

* BASIC PROGRAMMING

  * [read-file](https://github.com/JeffDeCola/my-python-examples/tree/master/basic-programming/read-file)

    _Reading a file a few different ways._

## UNIT TESTING AND MY GITHUB WEBPAGE IS UPDATED USING CONCOURSE

For fun, I use concourse to automate unit testing, update
[my-python-examples GitHub Webpage](https://jeffdecola.github.io/my-python-examples/)
and alert me of the changes via repo status and slack.

The unit testing is accomplished by running this script this script
[here](https://github.com/JeffDeCola/my-python-examples/tree/master/ci/scripts/unit-tests.sh).

The github webpage update is accomplished this by copying and editing
this `README.md` file to `/docs/_includes/README.md`.
You can see the concourse task (a shell script)
[here](https://github.com/JeffDeCola/my-python-examples/tree/master/ci/scripts/readme-github-pages.sh).

A pipeline file [pipeline.yml](https://github.com/JeffDeCola/my-python-examples/tree/master/ci/pipeline.yml)
shows the entire ci flow. Visually, it looks like,

![IMAGE - my-python-examples concourse ci pipeline - IMAGE](docs/pics/my-python-examples-pipeline.jpg)

For more information on using concourse for continuous integration,
refer to my cheat sheet on [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).
