salt-tutorial
=============

This tutorial is based off of [salt-sandbox](https://github.com/elasticdog/salt-sandbox)
with some heavy modifications to go through this tutorial.

salt-tutorial is a multi-VM [Vagrant](http://vagrantup.com/)-based
[Salt](http://saltstack.org/) development environment used for learning
the basics of salt, and some introductions to more advanced uses of salt.

salt-tutorial will set up three separate virtual machines:

* _salt.example.com_ - the Salt master server
* _minion1.example.com_ - the first Salt minion machine
* _minion2.example.com_ - the second Salt minion machine

These VMs will be used throughout the tutorial to setup a LAMP
stack environment & 

Requirements
============

To use Salt Sandbox, you must have the following items installed and
working:

* [VirtualBox](https://www.virtualbox.org/) - VirtualBox 4.2+
* [Vagrant](http://vagrantup.com/) - Vagrant 1.3.5+

salt-tutorial will be using Ubuntu 12.04 LTS for the base boxes.

ATTENTION: Known Issues
=======================

If you're running Vagrant 1.3.4 there is a [known bug](https://github.com/mitchellh/vagrant/issues/2309)
that will cause your "vagrant up" to fail. It is recommended to upgrade to 1.3.5.

Usage
=====

Make sure you have a compatible Vagrant base box (if you don't have one
already, it will download a 64-bit Ubuntu 12.04 LTS box for you), and then you
should be good to clone this repo and go:

    $ vagrant box list
    precise64
    $ git clone git://github.com/JustinCarmony/salt-tutorial.git
    $ cd salt-tutorial/

Initial Startup
---------------

To bring up the Salt Sandbox environment, issue the following command:

    $ vagrant up

The following tasks will be handled automatically:

1. The Salt master daemon will be installed and enabled on the master machine.
2. The Salt minion daemon will be installed and enabled on all three machines.
3. A host-only network will be set up with all machines knowing how to
   communicate with each other.

To test to make sure everything is working, you can do the following:

    $ vagrant ssh master
    $ sudo su
    # salt --version

Whats Next
==========

Attend the tutorial class & follow along!


License
=======

salt-tutorial is provided under the terms of [The MIT
License](http://www.opensource.org/licenses/MIT).

Copyright &copy; 2013, [Justin Carmony](mailto:justin@justincarmony.com).

Salt Sandbox is provided under the terms of [The MIT
License](http://www.opensource.org/licenses/MIT).

Copyright &copy; 2012, [Aaron Bull Schaefer](mailto:aaron@elasticdog.com).
