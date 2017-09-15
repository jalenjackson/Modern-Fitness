# Modern Fitness
Fitness web app developed with RoR.

## Development Environment
 
* Rails `5.1.4`
* rvm `1.29.3`
* Bundler `1.16.0.pre.2`

## Installation

Install the dependencies and migrate database.
```sh
$ cd rgmfp-ror-website
$ bundle install
$ rake db:migrate
```

## Deployment
Start the server.
```sh
$ rails s
```

Verify the deployment by navigating to your server address in your preferred browser.

```sh
127.0.0.1:3000
```

## Notable Gems

| Gem | Description |
| ------ | ------ |
| [devise](https://rubygems.org/gems/devise) |Flexible authentication solution for Rails with Warden|
| [annotate](https://rubygems.org/gems/annotate/) |Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.|
| [simple_form](https://rubygems.org/gems/simple_form/) |Forms made easy!|

## Usage
Create user if this is your first visit or sign in with exisiting account.
