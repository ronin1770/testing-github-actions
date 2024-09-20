FROM python:3.9
RUN ls -la
RUN echo "------------------------------------------"
RUN mkdir -p /v1  # Create the /app directory if it doesn't exist

WORKDIR /v1       # Set the working directory
RUN echo "Inside /v1"
RUN ls -la
RUN echo "------------------------------------------"

COPY app.py ./      # Copy app.py into the /app directory
CMD ["python3", "app.py"]
