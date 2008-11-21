# Conductor Application

This is a base rails application skeleton. I like bort, but wanted to use authlogic instead of restful authentication.

## Features

  - [Authlogic](http://github.com/binarylogic/authlogic) based authentication
  - password reset support
  - openid support
  - support for user roles (via `require_role` in your controller classes)
  - configures will_paginate gem in environment.rb
  - sessions use ActiveRecord session store
  

## TODO

  - Exception Notifier, or hoptoad, or...
  - settings.yml for application settings like sitename, url, email, etc. (primarily for use in notifications)
  - capistrano
  - jquery
  - jrails

## Installation

  - download and unzip [conductor](http://github.com/sbfaulkner/conductor)
  - edit database.yml
  - edit email and password for admin user in initial migration
  - rake db:migrate

Copyright (c) 2008 [unwwwired.net](http://unwwwired.net), released under the MIT license
