provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "customdevice" {
  ami           = data.aws_ami.customami.id
  instance_type = "t2.micro"
  key_name          = "feb24key"
  availability_zone = "us-east-1a"
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "feb24key"
    
  }
  private_ip ="172.31.90.150" 
  tags = {
    Name = "custompackerec2"
  }
  
}

data "aws_ami" "customami" {
  most_recent      = true
  owners           = ["self"]

  filter {
        name = "tag:Name"
        values = ["mypackeraminew"]
    }

  
 
}

