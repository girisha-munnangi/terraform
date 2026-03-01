resource "aws_instance" "girisha" {
    for_each = toset(var.instances)
    instance_type = "t3.micro"
    ami = "ami-0220d79f3f480ecf5"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = each.key
        project = "roboshop"
    }
}

resource "aws_security_group" "allow_all"{
    name = "allow-all-terraform"
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
    tags = {
        Name = "allow-all-terra"
    }
}