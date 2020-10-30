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
   --key minha-pasta-pessoal/Linux2-BaseServer.txt \
   --body Linux2-BaseServer.txt \
   --tagging 'Name=Monitor&Type=Support'
#         ||     ||
#         \/     \/
# {
#       "ETag": "\"929698c29008845b2d7e381d9f355683\""
# }

aws s3api put-object --bucket hkh-teste01-front-door \
   --key pasta-do-coleguinha/Linux2-BaseServer.txt \
   --body Linux2-BaseServer.txt \
   --tagging 'Name=Monitor&Type=Support'
#         ||     ||
#         \/     \/
# {
#    "ETag": "\"929698c29008845b2d7e381d9f355683\""
# }

aws s3api put-object --bucket hkh-teste01-front-door \
   --key pasta-do-coleguinha/Monitoring-ZambbixGrafana.txt \
   --body Monitoring-ZambbixGrafana.txt \
   --tagging 'Name=MedicalExam&Type=SeiLa'
#         ||     ||
#         \/     \/
# {
#    "ETag": "\"9162886f7479c5be9fc951fb5b887a2e\""
# }


# listar TODOS os objectos de bucket
# aws s3api list-objects-v2  --bucket <bucket-name>
aws s3api list-objects-v2 --bucket hkh-teste01-front-door 
aws s3api list-objects-v2 --bucket hkh-teste01-front-door  \
    --delimiter "minha-pasta-pessoal"
    ## deu ruim, mostrou a outra pasta
aws s3api list-objects-v2 --bucket hkh-teste01-front-door  \
    --prefix  "minha-pasta-pessoal"
aws s3api list-objects-v2 --bucket hkh-teste01-front-door  \
    --prefix  "pasta-do-coleguinha"
