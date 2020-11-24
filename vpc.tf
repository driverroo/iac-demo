resource "aws_vpc" "tf-vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "tf-vpc"
    Purpose = "DevOps TF Build"
  }
}
resource "aws_subnet" "subnets" {
  count = "${length(data.aws_availability_zones.azs.names)}"
  availability_zones = "${element(data.aws_availability_zones.azs.names,count.index)}"
  vpc_id     = "${aws_vpc.tf-vpc.id}"
  cidr_block = "${element(var.subnet_cidr,count.index)}"

  tags = {
    Name = "sub_az1-${count.index+1}"
  }
}