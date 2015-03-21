# Scuttlebutt

Scuttlebutt is a minimal blogging engine that can be used to add blogging capabilities to a Rails application.

## Features

The core engine provides the basic blogging features you would expect:

* article authoring interface (Markdown by default)
* tagging
* permalinks
* comments (via Disqus)
* multiple authors and author pages

## Installation

### Generate your Rails application

Scuttlebutt is a Rails Engine. This means you need to have application to install Scuttlebutt into. Generate the parent application as you normally would:

```
$ rails new my_app
```

### Add to your Gemfile

Add Scuttlebutt to your Gemfile

```ruby
gem 'scuttlebutt', git: 'https://github.com/aergonaut/scuttlebutt.git'
```

Then run `bundle install` to install it.

### Run the generator

Run the generator to generate the required config files.

```
$ rails generate scuttlebutt:install
```

This will create a `config/initializers/scuttlebutt.rb` file containing configuration options, as well as copy over Scuttlebutt's migrations and update your database.

### Mount the engine

Mount Scuttlebutt in your application's `routes.rb` file.

```ruby
MyApp.routes.draw do
  mount Scuttlebutt::Engine, at: '/'
end
```

This will mount Scuttlebutt at your application's root path. If you want to mount at a different path, simply change the `at` option to the path you want.

### Create a user

Open `rails console` and create a new user.

## License

Copyright 2015 Chris Fung

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
