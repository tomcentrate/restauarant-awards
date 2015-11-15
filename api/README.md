# Restaurant Awards System

## Project Details
Restaurant Award System for Small Businesses. We're recreating a system that allows a restaurant owner to keep track of their customers. 

### Basic Features
- Record Customer Sales by Receipt Number.
- Show awards available once a certain threshold is reached.
- Search customers up by email or phone number.
- Automatically sign them up for their mailing list.

## Initial Setup

The environment setup requires Virtualbox and Vagrant, and uses librarian-chef to setup. Read the `initial_setup.md` in `vagrant/` to get your environment setup.

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


