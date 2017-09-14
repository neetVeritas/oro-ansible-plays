decrypt:
	ansible-vault decrypt hosts group_vars/*

encrypt:
	ansible-vault encrypt hosts group_vars/*

ping:
	ansible -m ping -i hosts all --ask-vault-pass

play:
	ansible-playbook playbooks/${playbook}.yml -i hosts --ask-vault-pass