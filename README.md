Email Landing Page
============

A simple, customizable landing page for email signup, based on [Twitter Bootstrap](https://github.com/twitter/bootstrap), [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate), and [Sinatra](https://github.com/sinatra/sinatra).

The current version has optional MailChimp and Google Analytics integration.

Please visit the [live demo](http://landingpages.herokuapp.com/) on Heroku and join the project mailing list

# Instructions

1. `$ git clone git://github.com/quartzmo/email-landing-page.git`
1. `$ cd email-landing-page`
1. `$ rm -rf .git`
1. `$ bundle install`
1. Register for a free MailChimp account and generate an API key (required).
1. Edit `app.rb`, adding your MailChimp API key and list name (required).
1. Modify `views/index.erb`, replacing sample content with your own.
1. If you want nifty Rack-based Google Analytics, edit `Gemfile` and `config.ru`, uncomment the indicated lines, and add
   your Google Analytics account ID (optional). Otherwise add any analytics code you want to `views/index.erb`.
1. `$ bundle exec rackup` to start the app locally on port 9292.
1. Test locally.
1. Register for a free Heroku account (optional).
1. Follow the [Ruby instructions](https://devcenter.heroku.com/articles/ruby) to deploy to Heroku (optional).
1. Configure [custom domain](https://devcenter.heroku.com/articles/custom-domains) name with Heroku.

# Credits

Inspired by [alphabetum/landing-page](https://github.com/alphabetum/landing-page).
