# aws-lambda-containerized-python
An example of a containerized Python function that is triggered by AWS Lambda

# Usage

## Build
`docker build -t lambdapy .`

## Run Local
`docker run -p 9000:8080 lambdapy`

## Make Local Request
`curl --request POST \
  --url http://localhost:9000/2015-03-31/functions/function/invocations \
  --header 'Content-Type: application/json' \
  --data '{"Input": 10}'`