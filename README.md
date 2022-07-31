# File sharing application

## Rails server locally note.

* Pull from github
* bundle install
* Webpacker requires Node.js ">=10.17.0".
* Need install Yarn.

Working list:
- [x] Decide Rails and Ruby verison. Ruby 3.0.4 (2022-04-12) and Rails 6.1.6.1 (2022-07-12).
- [x] Decide file upload framework. Choose [paperclip](https://www.ruby-toolbox.com/categories/rails_file_uploads).
- [x] Local server ready.
- [ ] Basic web style template. (bootstrap)
- [ ] Heroku deploy.
- [ ] File storage solution.

## Basic Requirements

* A user can upload and share files,
* Sharing links should be hard to guess,
* Sharing links should expire. (uuid)
* Have unit tests.
* SPA (single page application).

### What we don't do:

* User doesn't need to login.
* Doesn't need download file list.

## Good to have

* Download link should be short.
* Host the application on Heroku.
* File validation. (Max file size and file name.)
* Copy shared link to clipboard.
* Drop file upload.
* CI/CD.
* Feature test. (e2e testing)
* Lower cost. (File storage cost.)
* Mobile web (RWD).
* When file not found (expired), redirect to index with flash.

## Bonus

* Anti virus
* Custom download link (readable link)

## Reference

* https://github.com/thoughtbot/paperclip