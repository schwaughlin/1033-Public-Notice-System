# README

[![Code Climate](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/badges/80c3216ae04bbe12b73d/gpa.svg)](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/feed)
[![Build Status](https://travis-ci.org/schwaughlin/1033-Public-Notice-System.svg?branch=master)](https://travis-ci.org/schwaughlin/1033-Public-Notice-System)
[![Test Coverage](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/badges/80c3216ae04bbe12b73d/coverage.svg)](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/coverage)
[![Issue Count](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/badges/80c3216ae04bbe12b73d/issue_count.svg)](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/feed)

**Coveralls has been removed for now, as it won't hook in to the Schwaughlin repo which is the primary one I want to use; Same issue for Slack's Github webhook**

Config Notes:

-Code climate test

* After installation, enter the following to allow the Github Slack custom webhook to work:

[Sauce](https://github.com/chriseldredge/git-slack-hook)

```
###CD down to /hooks

chmod +x post-receive

git config hooks.slack.webhook-url 'https://hooks.slack.com/services/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'

git config hooks.slack.username 'git'

git config hooks.slack.icon-url 'http://ericsteinborn.com/github-for-cats/img/ironcat.png'

git config hooks.slack.show-full-commit true

```


#######################

Things you may want to cover:

* Ruby version
  - 2.3.1
  - Rails 5.0.0

* System dependencies

* Testing
  - RSpec
  - FactoryGirl
  - capybara
  - Simple Cov

* CI
  - CodeClimate

* Database initialization
  - Postgres
