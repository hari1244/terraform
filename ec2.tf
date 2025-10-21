resource "aws_instance" "terraform" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids=[aws_security_group.allow-all.id]

  tags = {
    Name = "terraform"
    Terraform="true"
  }
}
resource "aws_security_group" "allow-all" {
 name ="allow-all"

  egress {
    from_port        = 0 #all ports
    to_port          = 0
    protocol         = "-1" #-1 means all protocol
    cidr_blocks      = ["0.0.0.0/0"] #internet
    
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
  tags = {
  Name ="allow-all"
}
}