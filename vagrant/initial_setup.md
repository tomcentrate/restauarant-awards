Setting up VirtualBox environment
=================================
This box file comes from https://vagrantbox.es and is Ubuntu 14.04 Stable

On first setup of this vagrant box, it will not have shared folders enabled.
This requires downloading Guest Additions to the box.

Start up the box.
```
vagrant up
vagrant ssh
```

#### Install VirtualBox Guest Additions
Download VirtualBox Guest Additions iso to /tmp and install
```
cd tmp
wget http://download.virtualbox.org/virtualbox/5.0.2/VBoxGuestAdditions_5.0.2.iso
mkdir additions
sudo mount -o loop VBoxGuestAdditions_5.0.2.iso /tmp/additions
cd additions
sh VBoxLinuxAdditions.run
```

#### Install Ruby 2.2.3

Install Pre-requisites
```
sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
```

Install Ruby
```
cd /tmp
wget https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz
tar -xzvf ruby-2.2.3.tar.gz
cd ruby-2.2.3/
./configure
make
sudo make install
ruby -v
```

### Required Installations for Rails
For Ruby-2.2.3 json gem
```
sudo apt-get install libgmp3-dev
```

For Running a server
```
sudo apt-get install nodejs
```

# Setup postgres

### Install Postgrs
```
sudo apt-get install postgresql postgresql-contrib
# Install gem locally
gem install pg

# Login as postgres user
sudo -i -u postgres
createuser vagrant
psql
  ALTER ROLE vagrant CREATEDB;
  CREATE DATABASE vagrant;
  \q
```
### Log back into as vagrant user

```
CREATE DATABASE restaurant_award_test;
CREATE DATABASE restaurant_award_development;

```
