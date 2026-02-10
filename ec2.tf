resource "aws_instance" "terraform"  {
    ami = "ami-069e612f612be3a2b"
    instance_type = "t3.micro"

    tags = {

         Name = "terraform"
        Terraform = "true"
    }
    
}