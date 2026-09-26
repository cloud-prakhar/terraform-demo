output "s3_bucket_name" {
  value = module.s3-bucket.bucket_name
}

output "s3_bucket_arn" {
  value = module.s3-bucket.bucket_arn
}

output "ec2_instance_id" {
  value = module.ec2-instance.instance_id
}

output "ec2_instance_public_ip" {
  value = module.ec2-instance.instance_public_ip
}