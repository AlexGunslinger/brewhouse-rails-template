# Brewhouse Rails Template

This is a Rails 4 application.

## Get up and running

### Dependencies

You'll need:

- Postgresql
- Ruby 2.2+
- bundler (`gem install bundler`)
- Redis (`brew install redis`) - for `sidekiq`
- qt (`brew install qt`) - for `capybara-webkit`

### Bootstrap your dev env

```
bundle
rake db:create db:migrate db:seed
```

## Run the tests

```
RAILS_ENV=test rake db:create db:migrate
rspec && cucumber
```

## Run local environment

Assuming you use [pow](http://pow.cx), your app should live at
http://brewhouse-rails-template.dev.

You should run `sidekiq` to perform background jobs.

## Deployment

To bootstrap the app:

* 1. Create the application on Heroku: [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
* 2. Add the repository to Circle-CI

Circle-CI deploys the master branch when it passes to https://brewhouse-rails-template.herokuapp.com

