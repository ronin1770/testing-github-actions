FROM python:3.9
RUN mkdir -p /app  # Create the /app directory if it doesn't exist
WORKDIR /app       # Set the working directory
COPY app.py .      # Copy app.py into the /app directory
CMD ["python3", "app.py"]
