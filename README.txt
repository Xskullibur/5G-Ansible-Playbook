Upload
ansible-playbook -i inventory.ini upload_playbook.ansible.yml --ask-pass --ask-become-pass

Extract
ansible-playbook -i inventory.ini extract_playbook.ansible.yml

Restart
ansible-playbook -i inventory.ini restart_service_playbook.ansible.yml  --ask-pass --ask-become-pass

ADD INVENTORY
bt-baf-ran_5g-gnb-baf ansible_host=100.97.6.40 os=ubuntu_22_04_desktop
bt-beg-ran_5g-gnb-beg ansible_host=100.96.6.10 os=ubuntu_22_04_desktop