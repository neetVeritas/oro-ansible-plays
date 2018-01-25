# Oro / Ansible Plays

> This project has been cloned from the private oro-project repository.

These ansible playbooks will be used to stage any server being used by Oro.
This includes general use servers, private docker registry, concourse ci, as well as webservers used for deployments.

Hosts can be specified in the `hosts` file, at the moment we have three primary host groups:

* **Registry**: Docker registry for in-house builds.
* **Concourse**: Concourse CI for testing, building, and deploying.
* **Deployment**: Deployment servers for Oro services.

Server configurations can be found in the respective playbook in the `playbooks` directory.
Each playbook name coincides with it's target host group.
The `common` playbook contains default configurations for *every* server node.

Vulnerable host specific configurations viarables have been stored in the `group_vars` directory.
These variables have been encrypted using [ansible-vault](http://docs.ansible.com/ansible/latest/playbooks_vault.html).

These playbooks will be responsible for installing the following:

### Common

* Python 2.7
* Pip
* Docker
* Docker Compose
* Ansible
* AWS CLI
* NGINX (dockerized)

### Registry

* Docker Registry
    * http auth
    * pull and push users
    * nginx configuration

### Concourse

* Postgres (dockerized)
* Concourse (dockerized)
    * vault variables
    * nginx configuration

### Webserver

* Node.js 8
* NPM 5
* PHP 7

At this time, these plays only support Ubuntu 14 (trusty) and Ubuntu 16 (xenial).Future support for redhat based linux distros has been documented [here](https://app.asana.com/0/420818284556935/420818284556934/f).

## Usage

To run this ansible playbook, ansible 2.2 or higher must be installed on your host machine.
Our Makefile has the following recipes available for use:

* **ping**: Use ansible to check the health of our host machines.
* **play**: Run our ansible configurations against our target host group.
* **decrypt**: Decrypt `hosts` file and `group_vars` variables.
* **encrypt**: Encrypt `hosts` file and `group_vars` variables.

## Contributing

When contributing, be sure to add your name and email to `docs/contributing.md`.

---
Copyright (c) 2017 John Nolette, Oro Team Licensed under the MIT license.
