# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define the environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

