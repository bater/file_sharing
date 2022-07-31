# File sharing application

## Rails server locally note.

* Pull from github
* bundle install
* Webpacker requires Node.js ">=10.17.0".
* Need install Yarn.
* `rails webpacker:install`

Working list:
- [x] Decide Rails and Ruby verison. Ruby 3.0.4 (2022-04-12) and Rails 6.1.6.1 (2022-07-12).
- [x] Decide file upload framework. Choose [paperclip](https://www.ruby-toolbox.com/categories/rails_file_uploads).

## Basic Requirements

* A user can upload and share files,
* Sharing links should be hard to guess,
* Sharing links should expire.
* Have unit tests.
* SPA (single page application).

### What we don't do:

* User doesn't need to login.

## Intermediate Requirements

* Host the application on Heroku.

## Advanced Requirements

## Reference