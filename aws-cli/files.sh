# subir arquivos para um bucket
# aws s3 sync <pasta-origem> s3://<bucket>
aws s3 sync . s3://hkh-teste01-front-door

# listar arquivos de um bucket
# aws s3 ls s3://<bucket>
aws s3 ls s3://hkh-teste01-front-door

# excluir arquivos de um bucket
# aws s3 rm s3://<bucket> --recursive
aws s3 rm s3://hkh-teste01-front-door --recursive



# subir um objeto para um bucket
# aws s3api put-object --bucket <bucket-name> --key <parte-do-caminho>/<nome-do_arquivo> --body <nome-do_arquivo>
aws s3api put-object --bucket hkh-teste01-front-door \
   --key minha-pasta-pessoal/files.sh \
   --body files.sh \
   --grant-read
   --tagging "Name=Medical Exam"
#         ||     ||
#         \/     \/
# {
#       "ETag": "\"e2feae48415dfb68e15deed3fa645881\""
# }
aws s3api put-object --bucket hkh-teste01-front-door \
   --key pasta-do-coleguinha/files.sh \
   --body files.sh \
   --tagging "Name=Medical Exam"
#         ||     ||
#         \/     \/
# {
#       "ETag": "\"e2feae48415dfb68e15deed3fa645881\\""
# }
