default:
	gitpull
	ansible-playbook -i $(component_name)-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=$(component_name) -e env=$(env) roboshop.yml

all:
	ansible-playbook -i frontend-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=frontend -e env=$(env) roboshop.yml
	ansible-playbook -i redis-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=redis -e env=$(env) roboshop.yml
	ansible-playbook -i mongodb-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=mongodb -e env=$(env) roboshop.yml
	ansible-playbook -i mysql-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=mysql -e env=$(env) roboshop.yml
	ansible-playbook -i rabbitmq-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=rabbitmq -e env=$(env) roboshop.yml
	ansible-playbook -i catalogue-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=catalogue -e env=$(env) roboshop.yml
	ansible-playbook -i user-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=user -e env=$(env) roboshop.yml
	ansible-playbook -i cart-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=cart -e env=$(env) roboshop.yml
	ansible-playbook -i shipping-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=shipping -e env=$(env) roboshop.yml
	ansible-playbook -i payment-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=payment -e env=$(env) roboshop.yml
	ansible-playbook -i dispatch-dev.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=dispatch -e env=$(env) roboshop.yml


