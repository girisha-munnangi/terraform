resource "aws_instace" "girisha" {
    for_each = var.instances
    ami = "ami-0220d79f3f480ecf5"
    instance_type = each.value
    vpc_security_group_ids = 
    tags {
        Name = each.key
        project = "roboshop"
    }
}
resource "aws_security_group" "allow_all" {
    name = "allow-all-terraform"
    description = "allowing all ports"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}