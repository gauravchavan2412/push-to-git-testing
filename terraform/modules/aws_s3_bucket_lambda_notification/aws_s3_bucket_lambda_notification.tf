resource "aws_lambda_permission" "allow_s3_invoke" {
  statement_id  = "AllowS3Invoke"
  action        = "lambda:InvokeFunction"
  source_arn    = var.bucket_arn
  function_name = var.function_arn
  principal     = "s3.amazonaws.com"
}

resource "aws_s3_bucket_notification" "invoke_lambda" {
  bucket = var.bucket_name

  lambda_function {
    lambda_function_arn = var.function_arn
    events              = var.events
    filter_prefix       = var.filter_prefix
    filter_suffix       = var.filter_suffix
  }
}
