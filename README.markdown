# Conductor Application

This is a base rails application skeleton. I like [bort](http://github.com/fudgestudios/bort), but wanted to use authlogic instead of restful authentication.

## Features

  - [Authlogic](http://github.com/binarylogic/authlogic) based authentication
  - password reset support
  - openid support
  - support for user roles (via `require_role` in your controller classes)
  - sessions use ActiveRecord session store
  - application settings for things like sitename, url and email addresses
  - jrails and jquery preinstalled (instead of prototype)
  - uses haml for markup
  - [classy_forms](http://github.com/sbfaulkner/classy_forms) is used to dry up labels, etc. and markup input tags with type classes
  - starter stylesheet including import of [Eric Meyer's reset stylesheet](http://meyerweb.com/eric/tools/css/reset/)
  - required gems configured in environment.rb
  - includes required/frequently used plugins

### Configured gems

  - authlogic
  - ruby-openid
  - will_paginate
  - haml

### Included plugins

  - paperclip
  - classy_forms

## TODO

  - Exception Notifier, or hoptoad, or...
  - capistrano

## Installation

  - download and unzip [conductor](http://github.com/sbfaulkner/conductor)
  - edit database.yml and settings.yml
  - rake db:migrate

## Acknowledgement

  - portions of this were inspired by (or copied outright from) [bort](http://github.com/fudgestudios/bort)
  - reset.css by Eric Meyer is public domain - thanks Eric!

## Legal

**Author:** S. Brent Faulkner <brentf@unwwwired.net>  
**License:** Copyright &copy; 2008 unwwwired.net, released under the MIT license
