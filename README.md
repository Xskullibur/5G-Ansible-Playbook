# Download
```
ansible-playbook -i inventory.ini extract_playbook.ansible.yml
```
- Tags - `nrf` | `udr` | `udm` | `amf` | `ausf` | `smf` | `upf` | `pcf` | `bsf` | `nssf` | `gnb` | `ue` | `bird` | `upf-core` | `upf-baf`


## MongoDB Only
```
ansible-playbook -i inventory.ini extract_playbook.ansible.yml --tags "db"
```
- Tags - `db` | `export` | `download` | `clear`

# Upload
```
ansible-playbook -i inventory.ini upload_playbook.ansible.yml
```

# Restart All Services
```
ansible-playbook -i inventory.ini restart_service_playbook.ansible.yml
```

# TODO:
## Add to inventory
- `bt-baf-ran_5g-gnb-baf ansible_host=100.97.6.40 os=ubuntu_22_04_desktop ansible_user=bt-user ansible_password=Admin1Admin1`
- `bt-beg-ran_5g-gnb-beg ansible_host=100.96.6.10 os=ubuntu_22_04_desktop ansible_user=bt-user ansible_password=Admin1Admin1`