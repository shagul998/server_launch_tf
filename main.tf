data "template_file" "user_data" {
  #depends_on = [null_resource.user-data-download] 
  template = "${file("${path.module}/user-data.tpl")}"
}

resource "aws_instance" "cluster_launch" {
  count                  = "${var.ec2_instance_count}"
  ami                    = "${var.aws_instance_ami}"
  instance_type          = "${var.aws_instance_type}"
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.security_group_id}"]
  key_name               = "${var.ssh_key_name}"
  user_data              = "${data.template_file.user_data.rendered}"
  iam_instance_profile   = "${var.iam_instance_profile}"

  tags = {
    Name  = "${var.tag_name}"
    Owner = "${var.tag_owner}"
  }
}
