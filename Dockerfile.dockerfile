# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code and test files to the working directory
COPY src/ app/
COPY tests/ tests/

# Expose the port that the app will run on
EXPOSE 5000

# Run the Flask app when the container starts
CMD ["python", "app.py"]
