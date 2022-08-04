# File sharing application

## Rails server locally note.

* Pull from github
* bundle install
* Webpacker requires Node.js ">=10.17.0".
* Need install Yarn.

Working list:
- [x] Decide Rails and Ruby verison. Ruby 3.0.4 (2022-04-12) and Rails 6.1.6.1 (2022-07-12).
- [x] File storage solution. ([ActiveStorage](https://guides.rubyonrails.org/active_storage_overview.html))
- [x] Local server ready.
- [ ] Basic web style template. (bootstrap)

## Basic Requirements

- [x] A user can upload and share files.
- [x] Two page app, one for upload and one for download.
- [x] Provide a README with clear setup instructions.
* Sharing links should be hard to guess.
* Sharing links should expire.
* Have unit tests.

### What we don't do (scope out):

* User doesn't need to login.
* Doesn't need download file list. (No file index or search funcion.)
* Live app.

## Good to have

* Build by `docker` and `docker-compse`.
* Download link should be short.
* File validation. (Max file size and filename size.)
* CI/CD.
* When file not found (expired), redirect to index with flash.

## Bonus

* Anti virus.
* Feature test. (e2e testing)
* Custom download link (readable link)
* Lower cost. (File storage cost.)
* Expire time countdown js animation.
* Mobile view (RWD).
* js drop file upload.
* Copy shared link to clipboard.
* Business plan (profitable).

## Reference

* https://github.com/thoughtbot/paperclip