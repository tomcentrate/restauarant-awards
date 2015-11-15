# sudo apt-get update
# # install VirtualBox Guest Additions. Guest additions allow
# # Mounting of the folders for certain items
# cd /tmp
# wget http://download.virtualbox.org/virtualbox/5.0.2/VBoxGuestAdditions_5.0.2.iso
# mkdir additions
# sudo mount -o loop VBoxGuestAdditions_5.0.2.iso /tmp/additions
# cd additions
# sh VBoxLinuxAdditions.run
# # Install things pre-ruby
# sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-devlibreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
# sudo apt-get -y install libgmp3-dev
# sudo apt-get -y install nodejs

# # Install Ruby for a global setting.
# cd /tmp
# wget https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz
# tar -xzvf ruby-2.2.3.tar.gz
# cd ruby-2.2.3/
# ./configure
# make
# sudo make install
# ruby -v

# # Install Postgres with development databases.
# sudo apt-get -y install postgresql postgresql-contrib
# gem install pg
# su --login postgres --command "createuser -d vagrant"
# su --login postgres --command "createdb vagrant"
# su --login vagrant --command "createdb restaurant_award_development"

# # Install RVM with gemsets.
# gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
# su --login vagrant --command "curl -sSL https://get.rvm.io | bash"
# su --login vagrant --command "source /home/vagrant/.rvm/scripts/rvm"
# su --login vagrant --command "rvm install 2.2.3"
# su --login vagrant --command "rvm use 2.2.3@restaurant --create"
# su --login vagrant --command "gem install bundler"
echo -e "\n"
echo -e "\n"
echo "All scripts have been installed"
echo "Please restart the server to start GuestAdditions"
echo "run:"
echo "vagrant reload"