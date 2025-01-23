resource "aws_s3_bucket" "versionamento" {
  bucket = "buster-scruggs-${var.environment}"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.versionamento.id
  versioning_configuration {
    status = "Enabled"
  }
}

