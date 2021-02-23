# Dual deployment POC

## Deploying as ksvc

- Push image to DockerHub:
```
docker build -t <image> .
docker push <image>
```

- Apply knative service to cluster: 
```
kubectl apply -f service.yaml
```


- Invoke ksvc to test:
```
curl -XPOST <ksvc-url> -H "Content-Type: application/json" -d '{"event":{"input":{"message": "Test message!"}},"context":{"val":"some context"}}'
```


## Deploying as lambda

- Publish image to AWS ECR
```
docker build -t <image> .
docker tag <image> 123412341234.dkr.ecr.us-east-1.amazonaws.com/<image>
aws ecr get-login-password | docker login --username AWS --password-stdin 123412341234.dkr.ecr.sa-east-1.amazonaws.com
docker push 123412341234.dkr.ecr.sa-east-1.amazonaws.com/<image>
```

- Create lambda from this image