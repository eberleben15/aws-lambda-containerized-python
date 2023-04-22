import json
import boto3
import numpy as np

# 
def handler(event, context):
    input = event['Input']
    response = int(input*input)

    return {
        'statusCode': 200,
        'body': response
    }