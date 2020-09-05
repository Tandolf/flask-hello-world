FROM python:3.8-alpine

# set working dir in the container
WORKDIR /code

# copy requirements.txt to workdir (.)
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# cope source content to the working dir (.)
COPY src/ .

# cmd to run on container start
CMD [ "python", "./main.py" ]