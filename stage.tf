#
# Stage and Stage Settings
#

resource "aws_api_gateway_stage" "first" {
  deployment_id = aws_api_gateway_deployment.first.id
  rest_api_id   = aws_api_gateway_rest_api.first.id
  stage_name    = "first"
}

resource "aws_api_gateway_method_settings" "first" {
  rest_api_id = aws_api_gateway_rest_api.first.id
  stage_name  = aws_api_gateway_stage.first.stage_name
  method_path = "*/*"

  settings {
    metrics_enabled = true
  }
}
