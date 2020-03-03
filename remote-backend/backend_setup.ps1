$PROJECT_NAME = $args[0]
$REGION=$args[1]


$BUCKET_TERRAFORM = get-content .\bucket_template.txt

get-content .\main.tf

$BUCKET_TERRAFORM -replace 'default_project_name', "$PROJECT_NAME" -replace 'default_region', "$REGION"| out-file -encoding utf8 .\main.tf

get-content .\main.tf