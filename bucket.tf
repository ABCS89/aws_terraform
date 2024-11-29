resource "aws_s3_bucket" "test" {
  bucket = "buster-scruggs-${var.environment}"
}

