/* Create lambda trust role
*/
resource "aws_iam_role" "TerraformFunctionRole" {
  name               = "TerraformFunctionRolePolicy"
  assume_role_policy = file("role/lambda_trust.json")
}

/* Create lambda policy for IAM Role (Lambda execute)
*/
resource "aws_iam_policy" "LambdaInvokePolicy" {
  name        = "LambdaInvokePolicy"
  description = "Allow lambda to execute"
  policy      = file("policy/lambda_invoke.json")
}

/* Attach policy to role to allow lambda to be invoke
*/
resource "aws_iam_role_policy_attachment" "LambdaPolicyAttachment" {
  role       = aws_iam_role.TerraformFunctionRole.name
  policy_arn = aws_iam_policy.LambdaInvokePolicy.arn
}
