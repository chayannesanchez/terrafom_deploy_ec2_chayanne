cuenta   = "dev"
proyecto = "lab"

key_name         = "lab-key"
private_key_path = "./lab-key.pem"

vpc_id = "vpc-00f479057476a2db8"

tags = {
  Owner = "Chayanne"
}

ec2_config = {
  instance_1 = {
    role_name     = "role-ec2-lab"
    ami           = "ami-0c1e21d82fe9c9336"
    instance_type = "t3.micro"
    subnet_id     = "subnet-00227b47a5f26ec04" 
    policy_arn    = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  }
}

sg_config = {
  instance_1 = {
    ingress_rules = [
      {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
  }
}