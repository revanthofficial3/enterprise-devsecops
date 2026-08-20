resource "aws_instance" "devsecops" {
  ami           = "ami-0f8a61b66d1accaee"
  instance_type = "m7i-flex.large"

  tags = {
    Name = "devsecops-server"
  }
}

resource "aws_instance" "k8s_master" {
  ami           = "ami-0f8a61b66d1accaee"
  instance_type = "c7i-flex.large"

  tags = {
    Name = "k8s-master"
  }
}

resource "aws_instance" "k8s_worker" {
  ami           = "ami-0f8a61b66d1accaee"
  instance_type = "c7i-flex.large"

  tags = {
    Name = "k8s-worker"
  }
}
