# Use the official ubuntu image as the base image
FROM ubuntu

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY pre-install.sh .
COPY requirements.txt .

# Install any dependencies
RUN sh pre-install.sh

# Expose the port on which Streamlit will run
EXPOSE 8501
