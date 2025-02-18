default:
	gitpull
	ansible-playbook -i $(component_name)-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=$(component_name) roboshop.yml