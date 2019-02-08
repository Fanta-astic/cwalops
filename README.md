# cwalops
Ansible playbooks for cwalops infrastructure

Testing an edit.

Useful commands
adhoc:
ansible -m setup -i 7erver.cwalops.ca, all

playbook:
ansible-playbook -i 7erver.cwalops.ca, compose/tests/test.yml -K -vvv
