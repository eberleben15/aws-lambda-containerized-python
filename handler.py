import json
import boto3
import numpy as np

def euclideanDistance(event, context):
    point1 = event['point1']
    point2 = event['point2']
    x1 = point1[0]
    y1 = point1[1]
    x2 = point2[0]
    y2 = point2[1]
    response = np.sqrt(((x2-x1)**2)+((y2-y1)**2))
    return {
        'statusCode': 200,
        'body': response
    }