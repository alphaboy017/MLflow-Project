FROM python:3.8-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
# ----------------
# Use a base image with Python and MLflow installed
# FROM python:3.9-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Install any dependencies (specified in requirements.txt)
# RUN pip install --no-cache-dir -r requirements.txt

# # Expose the port MLflow serves on
# EXPOSE 5000

# # Command to run the application
# CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000"]
