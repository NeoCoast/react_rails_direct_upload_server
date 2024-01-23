# README

This is the API codebase for the DirectUpload POC app.

## Table of Contents

- [Main Characteristics](#main-characteristics)
- [Getting Started](#getting-started)
- [Relevant Branches](#relevant-branches)
- [Tests](#tests)
- [Code quality](#code-quality)

## Main Characteristics

- Language: Ruby 3.2.1
- Framework: Rails 7.1.1
- Webserver: Puma
- Test Framework: RSpec
- Databases: Postgres

## Getting Started

- Clone this repo
- Install PostgreSQL if you don't have it
- Install Rails gem (version on Gemfile)
- Run `bundle install` to install all gems required by the project
- Create your .env file. You have an example at .env.template. You should be able to copy it and set your values. It's a good practice to keep the .env.template updated every time you need a new environment variable.
- Run `rails db:create db:migrate db:seed` to set up database
- Check that tests are passing running `bundle exec rspec spec`
- Run `rails s`

## Tests

You can run the unit tests with `rspec` or `rspec` followed by a specific test file or directory.

## Code quality

With `bundle exec rake linters` you can run the code analysis tool, you can omit rules with:

- Rubocop edit `.rubocop.yml`
- Reek edit `.reek.yml`
