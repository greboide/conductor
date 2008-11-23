# Conductor Application

This is a base rails application skeleton. I like [bort](http://github.com/fudgestudios/bort), but wanted to use authlogic instead of restful authentication.

## Features

  - [Authlogic](http://github.com/binarylogic/authlogic) based authentication
  - password reset support
  - openid support
  - support for user roles (via `require_role` in your controller classes)
  - authlogic, ruby-openid, will_paginate and haml gems configured in environment.rb
  - sessions use ActiveRecord session store
  - application settings for things like sitename, url and email addresses
  - jrails and jquery preinstalled (instead of prototype) 
  - paperclip preinstalled

## TODO

  - Exception Notifier, or hoptoad, or...
  - capistrano

## Installation

  - download and unzip [conductor](http://github.com/sbfaulkner/conductor)
  - edit database.yml
  - edit email and password for admin user in initial migration
  - rake db:migrate

## Acknowledgement

  - portions of this were inspired by (or copied outright from) [bort](http://github.com/fudgestudios/bort)

## Legal

Copyright (c) 2008 [unwwwired.net](http://unwwwired.net), released under the MIT license
