ec2_instance_count = "1"
aws_instance_ami = "ami-077f4dcd20ed5ed5d" #Ubtunu Server 18.04 LTS (us-east-1)
aws_instance_type = "t2.micro"
ssh_key_name = "me-server-dev" //assume terraform key-pair is created before hand
subnet_id = "subnet-5bf82270"
security_group_id = "sg-b46c0bd3"
iam_instance_profile = "ec2-full-access"
tag_name = "test_server"
tag_owner = "shagul"