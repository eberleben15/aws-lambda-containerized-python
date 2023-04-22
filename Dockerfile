# AWS base python image
FROM public.ecr.aws/lambda/python:3.9

# The base image provides an environment variable in LAMBDA_TASK_ROOT. 
#We can copy our Python code and install our dependencies in this directory.
COPY handler.py ${LAMBDA_TASK_ROOT}

# Requirements must be installed to LAMBDA_TASK_ROOT
COPY requirements.txt .
RUN pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

# Set the CMD to our handler function, this should be <filename>.<functioname>
CMD [ "handler.euclideanDistance" ]
