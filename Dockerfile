# Use an official Python image as the base
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements.txt first (so dependencies can be cached)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose the port our app will run on
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
