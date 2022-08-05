# File sharing application

## Application setup flow:
* `git clone https://github.com/bater/file_sharing.git`
* `cd file_shareing`

## Application profile:
* Ruby 3.0.4 (2022-04-12) and Rails 6.1.6.1 (2022-07-12).
* File storage solution: ([ActiveStorage](https://guides.rubyonrails.org/active_storage_overview.html))
* Database
* Test Framework: RSpec

## Basic Requirements :school_satchel:
- [x] A user can upload and share files.
- [x] Two page app, one for upload and one for download.
- [x] Provide a README with clear setup instructions.
- [x] Sharing links should be hard to guess. ([nanoid](https://github.com/radeno/nanoid.rb))
- [x] Sharing links should expire.
- [x] Have unit tests. (RSpec)

## Good to have :mortar_board:
- [ ] Build by `docker` and `docker-compse`.
- [x] Download link should be short.
- [ ] File validation. (Max file size and filename size.)
- [ ] CI/CD.
- [x] When file not found (expired), redirect to index with flash.
- [ ] Web Template and style.

## Bonus :fireworks:
- [ ] Anti virus.
- [ ] Feature test. (e2e testing)
- [ ] Custom download link (readable link)
- [ ] Lower cost. (File storage cost.)
- [ ] Expire time countdown js animation.
- [ ] Mobile view (RWD).
- [ ] js drop file upload.
- [ ] Copy shared link to clipboard.
- [ ] Business plan (profitable).
- [ ] [Rubocop](https://github.com/rubocop/rubocop)
- [ ] [Test coverage](https://github.com/simplecov-ruby/simplecov)

## What we don't do (scope out) :-1:
* User doesn't need to login.
* Doesn't need a download file list. (No file index or search funcion.)
* Live app. (by docker instead.)