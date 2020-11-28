# my-python-examples

[![Maintainability](https://api.codeclimate.com/v1/badges/34f7798c66ab9207ea80/maintainability)](https://codeclimate.com/github/JeffDeCola/my-python-examples/maintainability)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-python-examples/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-python-examples/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

_A place to keep my python code snippets and examples._

These python examples also contain info I gathered from other sources.

Table of Contents,

* [BASIC PROGRAMMING](https://github.com/JeffDeCola/my-python-examples#basic-programming)

Documentation and reference,

* [python-cheat-sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/development/languages/python-cheat-sheet)

[GitHub Webpage](https://jeffdecola.github.io/my-python-examples/)

## PYTHON EXAMPLES

_All sections in alphabetical order._

### BASIC PROGRAMMING

* [read-file](https://github.com/JeffDeCola/my-python-examples/tree/master/basic-programming/read-file)

  _Reading a file a few different ways._

## UPDATE GITHUB WEBPAGE & UNIT TESTS USING CONCOURSE (OPTIONAL)

For fun, I use concourse to  update
[my-python-examples GitHub Webpage](https://jeffdecola.github.io/my-python-examples/),
run my unit-tests and alert me of the changes via repo status and slack.

A pipeline file [pipeline.yml](https://github.com/JeffDeCola/my-python-examples/tree/master/ci/pipeline.yml)
shows the entire ci flow. Visually, it looks like,

![IMAGE - my-python-examples concourse ci pipeline - IMAGE](docs/pics/my-python-examples-pipeline.jpg)

The `jobs` and `tasks` are,

* `job-readme-github-pages` runs task
  [readme-github-pages.sh](https://github.com/JeffDeCola/my-python-examples/tree/master/ci/scripts/readme-github-pages.sh).
* `job-unit-tests` runs task
  [unit-tests.sh](https://github.com/JeffDeCola/my-python-examples/tree/master/ci/scripts/unit-tests.sh).

The concourse `resources types` are,

* `my-python-examples` uses a resource type
  [docker-image](https://hub.docker.com/r/concourse/git-resource/)
  to PULL a repo from github.
* `resource-slack-alert` uses a resource type
  [docker image](https://hub.docker.com/r/cfcommunity/slack-notification-resource)
  that will notify slack on your progress.
* `resource-repo-status` uses a resource type
  [docker image](https://hub.docker.com/r/dpb587/github-status-resource)
  that will update your git status for that particular commit.

For more information on using concourse for continuous integration,
refer to my cheat sheet on [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).
