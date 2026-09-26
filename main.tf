module "s3-bucket" {
  source      = "./modules/s3"

  bucket_name = "my-unique-bucket-name-83r8rt2"
  environment = "dev"
}

module "ec2-instance" {
  source        = "./modules/ec2"

  instance_type = "t3.micro"
  instance_name = "my-ec2-instance"
}

module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"

  name = "example"

  create_dlq = true
  redrive_policy = {
    # default is 5 for this module
    maxReceiveCount = 10
  }

  tags = {
    Environment = "dev"
  }
}
