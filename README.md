# README

[![Code Climate](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/badges/80c3216ae04bbe12b73d/gpa.svg)](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/feed)
[![Build Status](https://travis-ci.org/schwaughlin/1033-Public-Notice-System.svg?branch=master)](https://travis-ci.org/schwaughlin/1033-Public-Notice-System)
[![Coverage Status](https://coveralls.io/repos/github/schwaughlin/1033-Public-Notice-System/badge.svg?branch=code_climate_config)](https://coveralls.io/github/schwaughlin/1033-Public-Notice-System?branch=code_climate_config)
[![Issue Count](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/badges/80c3216ae04bbe12b73d/issue_count.svg)](https://codeclimate.com/repos/57b9cbe1270c315c9b003f9f/feed)

**Slack Webhook for Github currently not working. Status below:**

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


* Ruby version
  - 2.3.1
  - Rails 5.0.0.1

* Testing
  - RSpec
  - FactoryGirl
  - capybara
  - Simple Cov

* CI
  - CodeClimate
  - Coveralls
  - Travis CI

* Database initialization
  - Postgres
