# Deployment

Deployments are currently setup through Capistrano. The current server is setup on
a per-user, and assumes that the app user is `rails`.

The server is setup based on the One-Click install from DigitalOcean. Following
the instructions from [Their setup](https://www.digitalocean.com/community/tutorials/how-to-use-the-ruby-on-rails-one-click-application-on-digitalocean) is a good start.

## Setup Capistrano for easy Deploy

- `ssh-copy-id rails@ipaddress`

## Upgrade Rails to 2.2.3

- Login as the root user.
- `rvm install ruby-2.2.3`
- `rvm use ruby-2.2.3 --default`
- `gem install bundler rails unicorn`

### Setup Postgres database for Rails server
```
sudo -i -u postgres
psql
CREATE DATABASE rails;
\q
```

Required for Rails App
```
sudo apt-get install libgmp3-dev
sudo apt-get install nodejs
```

Follow instructions [here](https://www.digitalocean.com/community/tutorials/how-to-use-the-ruby-on-rails-one-click-application-on-digitalocean#ruby-version-manager)
To replace all instances in `/etc/default/unicorn`

## Capistrano path

I like setting it up on a per-user basis, setting up Capistrano to deploy to `/home/rails/awards`.

Set the unicorn pids and sockets in `/etc/default/unicorn`, `/etc/unicorn.conf`, `/etc/nginx/sites-available/rails` to point to:

- `/var/run/unicorn.pid` -> `/home/rails/awards/shared/tmp/pids/unicorn.pid`
- `/var/run/unicorn.sock` -> `/home/rails/awards/shared/tmp/sockets/unicorn.sock`
- `/home/rails/rails_project` -> `/home/rails/awards/current`
- `/home/rails/rails_project/public` -> `/home/rails/awards/current/public`

## Change init.d to restart as rails App

The user needs to be `rails` on first startup. This prevents weird deployment issues for continuous integration stuff.
in `/etc/init.d/unicorn`

Add `--chuid rails` to start-stop-daemons
