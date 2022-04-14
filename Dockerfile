# Setup image source
FROM python:stretch

# Setup app directory
COPY . /app
WORKDIR /app

# Install the required packages
RUN pip install -r requirements.txt

# Setup the entrypoint
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]