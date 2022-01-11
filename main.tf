resource "aws_launch_template" "launch_template" {
  name = "launch_template"
  image_id = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "asg" {
  availability_zones = ["us-east-1a","us-east-1b"]
  desired_capacity = 1
  max_size = 2
  min_size =1
  launch_template {
    id = aws_launch_template.launch_template.id
    version = "$Latest"
  }
}