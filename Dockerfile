# Use full python 3.11 image
FROM python:3.11

# Set working directory inside container
WORKDIR /app

# Copy requirements file
COPY app/requirements.txt .


# Install dependencies
RUN apt-get update && apt-get install -y postgresql-client && \
    pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory into container
COPY app/ .

# Make the wait script executable
RUN chmod +x wait-for-db.sh

# Expose the port your Flask app runs on
EXPOSE 5000

# Set environment variable for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask app after waiting for DB
CMD ["./wait-for-db.sh", "db", "flask", "run"]
