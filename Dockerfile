FROM python:3.9
WORKDIR /app  # Set the working directory
COPY app.py .  # Copy app.py to /app in the container
# Install any dependencies if necessary, e.g., COPY requirements.txt . && RUN pip install -r requirements.txt
CMD ["python3", "app.py"]
