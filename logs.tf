# Set up cloudwatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "example_log_group" {
  name              = "/ecs/example-app"
  retention_in_days = 30

  tags {
    Name = "example-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "example_log_stream" {
  name           = "example-log-stream"
  log_group_name = "${aws_cloudwatch_log_group.example_log_group.name}"
}