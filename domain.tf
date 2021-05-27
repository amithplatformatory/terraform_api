#
# Domain Setup
#

resource "aws_api_gateway_domain_name" "first" {
  domain_name              = aws_acm_certificate.first.domain_name
  regional_certificate_arn = aws_acm_certificate.first.arn

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_base_path_mapping" "first" {
  api_id      = aws_api_gateway_rest_api.first.id
  domain_name = aws_api_gateway_domain_name.first.domain_name
  stage_name  = aws_api_gateway_stage.first.stage_name
}
