docker build -t ashwanth1109/node-ric .
docker tag ashwanth1109/node-ric 346945241475.dkr.ecr.us-east-1.amazonaws.com/ashwanth1109/node-ric
aws ecr get-login-password --profile df-admin | docker login --username AWS --password-stdin 346945241475.dkr.ecr.us-east-1.amazonaws.com
docker push 346945241475.dkr.ecr.us-east-1.amazonaws.com/ashwanth1109/node-ric