## Information

### Summary

This app uses the "blogger" tutorial from [JumpStartLab](http://tutorials.jumpstartlab.com/projects/blogger.html). There are a few
slight modifications that I made from this tutorial:

* Used [Twitter Bootstrap Rails](https://github.com/seyhunak/twitter-bootstrap-rails)
* Installed [Devise](https://github.com/plataformatec/devise) instead of Sorcery
* Did not install paperclip

This app is created using rails 4.0.0 and ruby 2.0.0p195.

### Deployment

I configured DigitalOcean VPS with nginx, passenger and mysql on Ubuntu 11.04 LTS. However, I found a significantly easier way
to deploy this app.

[Cloud66](https://www.cloud66.com) and [DigitalOcean](https://www.digitalocean.com/). Cloud66 setup my stack, syncs and pull
from my GitHub and hosts it on DigitalOcean. It cost me $9 + $5 per month, respectively. It is totally worth it.

### Minor Update

* Rails 4 does not built in "attr_accessible". Used "protected_attributes" gem instead, for now.
* To use devise on Rails 4, specify branch. See gemfile for more information.

### Next Steps

* Add stats dashboard and move on to other tutorials on JumpStartLab.

Questions? Feel free to contact me at via github or [email](mailto:alvinangbs@gmail.com).
