# Restaurant Awards System

[ ![Codeship Status for tomcentrate/restauarant-awards](https://codeship.com/projects/7fbdbdd0-3671-0133-4a2d-6ac620adb7df/status?branch=master)](https://codeship.com/projects/100903)

## Project Details
Restaurant Award System for Small Businesses. We're recreating a system that allows a restaurant owner to keep track of their customers.

### Basic Features
- Record Customer Sales by Receipt Number.
- Show awards available once a certain threshold is reached.
- Search customers up by email or phone number.
- Automatically sign them up for their mailing list.

## Initial Setup

### Pre-requisites
- VirtualBox
- Vagrant
The environment setup requires VirtualBox and Vagrant, Read the `initial_setup.md` in `vagrant/` to get your environment setup.

```
cd vagrant
vagrant up
```

Vagrant will fail due to lack of VirtualBox Guest Additions. Run the following command and wait a bit.

```
vagrant provision
```

Once all the provisioning scripts stop running, restart the server.

```
vagrant reload
vagrant ssh
```

## Set up Rails for first use
We'll need to initialize all the gems for first
```
rvm use 2.2.3@restaurant --create
gem install bundler
bundle install

```
