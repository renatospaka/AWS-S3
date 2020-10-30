# criar um novo bucket
# aws s3api create-bucket --bucket <bucket-name> --region <region-acrhonimum>
aws s3api create-bucket --bucket hkh-teste01-front-door --region us-east-2  --create-bucket-configuration LocationConstraint=us-east-2
#         ||     ||
#         \/     \/
# {
#    "Location": "http://hkh-teste01-front-door.s3.amazonaws.com/"
# }

# excluir um  bucket
# aws s3api delete-bucket --bucket <bucket-name> --region <region-acrhonimum>
aws s3api delete-bucket --bucket hkh-teste01-front-door --region us-east-2
