module "ec2" {
  source = "git::https://github.com/Krish121212/Arrise_Terraform.git//EC2_instance"

  instances_configurations = {
    ec2-1 = {
      ami                    = "ami-sample"
      instance_type          = "t2.micro"
      subnet_id              = "subnet-random"
      vpc_security_group_ids = ["sg-0b4982a41aa37eaa1"]
      key_pair               = "key1"
      volume_size            = 50
      volume_type            = "gp2"
    }
    ec2-2 = {
      ami                    = "ami-sample2"
      instance_type          = "t3.micro"
      subnet_id              = "subnet-public"
      vpc_security_group_ids = ["sg-0b4982a41aa37eaa1"]
      key_pair               = "key2"
      volume_size            = 50
      volume_type            = "gp2"
    }
    ec2-3 = {
      ami                    = "ami-sample3"
      instance_type          = "m5.large"
      subnet_id              = "subnet-private"
      vpc_security_group_ids = ["sg-0b4982a41aa37eaa1"]
      key_pair               = "key3"
      volume_size            = 50
      volume_type            = "io1"
    }
    ec2-4 = {
      ami                    = "ami-sample4"
      instance_type          = "t2.large"
      subnet_id              = "subnet-public"
      vpc_security_group_ids = ["sg-0b4982a41aa37eaa1"]
      key_pair               = "key4"
      volume_size            = 50
      volume_type            = "gp3"
    }
    ec2-5 = {
      ami                    = "ami-sample5"
      instance_type          = "t3.large"
      subnet_id              = "subnet-private"
      vpc_security_group_ids = ["sg-0b4982a41aa37eaa1"]
      key_pair               = "key5"
      volume_size            = 50
      volume_type            = "gp3"
    }
  }
}

output "ec2_details" {
  value = module.ec2.ec2_details
}