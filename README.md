## Information

### Summary

This app uses the "blogger" tutorial from [JumpStartLab](http://tutorials.jumpstartlab.com/projects/blogger.html):. There are a few
slight modifications that I made from this tutorial:

* Used [Twitter Bootstrap Rails](https://github.com/seyhunak/twitter-bootstrap-rails):
* Installed [Devise](https://github.com/plataformatec/devise): instead of Sorcery
* Did not install paperclip

This app is created using rails 4.0.0 and ruby 2.0.0p195.

### Minor Report

* Rails 4 does not built in "attr_accessible". Used "protected_attributes" gem instead, for now.
* To use devise on Rails 4, specify branch. See gemfile for more information.

### Next Steps

* Only allow one user to create articles
* Improve entire website flow
* Clean & Improve UI
* Add static pages
* Use mysql2 gem in production
* Create brief statistics dashboard
* Slim down controllers
* Mess with Draper
* Using digitalocean - need to setup server, install git
* Capistrano to improve workflow
