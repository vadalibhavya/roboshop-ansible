git pull
ansible-playbook -i $1-{{ env }}.doubtfree.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component=$1 roboshop.yml