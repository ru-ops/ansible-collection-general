
[![License](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)](./LICENSE)
# Ansible Collection - rusops.general

## Description
This collection provides base RuOPS roles.

## Installation
With command line from Ansible Galaxy:
```
ansible-galaxy collection install rusops.general
```
With requirements file:
```
~# cat /path/to/your/requirements.yml
---
collections:
# from Ansible Galaxy
- name: rusops.general
# from Git repository
- name: https://github.com/rusops/ansible-collection-general.git
  type: git
...
~# ansible-galaxy install -r /path/to/your/requirements.yml
```

## Roles

### rusops.general.cron
Configuration of cron jobs. Please consult with role's [README](./roles/cron/README.md)

### rusops.general.ct_mongodb
Role deploys a MongoDB container from Docker Hub image. Please consult with role's [README](./roles/ct_mongodb/README.md)

### rusops.general.ct_rocketchat
Deployment a Rocket.Chat container based on the official docker image (https://hub.docker.com/_/rocket-chat). Please consult with role's [README](./roles/ct_rocketchat/README.md)

### rusops.general.ct_kafka_ui
Deployment for Kafka UI container. [README](./roles/ct_kafka_ui/README.md)

### rusops.general.ct_rocketchat
Deployment a Rocket.Chat container based on the official docker image (https://hub.docker.com/_/rocket-chat). Please consult with role's [README](./roles/ct_rocketchat/README.md)

### rusops.general.docker
Installation/configuration for Docker daemon and Docker client userspace configuration. Please consult with role's [README](./roles/pip/README.md)

### rusops.general.flush_handlers
Flushing Ansible handlers between other roles. Please consult with role's [README](./roles/flush_handlers/README.md)

### rusops.general.pip_install
Python pip packages installation. Please consult with role's [README](./roles/pip/README.md)

### rusops.general.pkg_install
Packages installation. Please consult with role's [README](./roles/pkg_install/README.md)

### rusops.general.systemd
Manipulating systemd services between other roles. Please consult with role's [README](./roles/systemd/README.md)

### rusops.general.template
Templating from file or in-place. Please consult with role's [README](./roles/template/README.md)

### rusops.general.timezone
Setup host's time zone. Please consult with role's [README](./roles/timezone/README.md)
