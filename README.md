# 5G Ansible Playbook
Ansible Playbook used to manipulate the hosts in a 5G network.

## Requirements
- Python 3.9
- Ansible 7.3.0

## Setup
A docker-compose file has been created to quickly setup the environment but it has not been tested yet.

### Docker Environment Setup
``` bash
docker compose up -d # Create the image and container

docker container ls -a # Identify the name of the container

docker attach -i $CONTAINER_NAME # Attach to the container
```

### Virtual Environment Setup
Refer to the [documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) provided by Ansible for more information.

## Usage
```bash
ansible-playbook -i $INVENTORY_DIR $PLAYBOOK_DIR
```

### Playbooks Available
- download_conf.ansible.yml
- restart_service.ansible.yml
- upload_conf.ansible.yml

### Tags
Tags are also included in the different playbooks which can be called using:
```bash
ansible-playbook -i $INVENTORY_DIR $PLAYBOOK_DIR --tags $TAGS --skip-tags $SKIP_TAGS
```

> Refer to the respective playbooks to find the various tags