# Use a base image with Python installed
FROM python:3.11-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install MkDocs with Material theme
COPY requirements.txt .

RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    python3 -m pip install --no-cache-dir mkdocs-material && \
    python3 -m pip install --no-cache-dir -r ./requirements.txt && \
    python3 -m pip check

# Copy the MkDocs configuration file
COPY mkdocs.yml .

# Copy the documentation source directory
COPY docs/ ./docs/

# Expose the default MkDocs port
EXPOSE 8000

# Set the entrypoint to serve the documentation with Material theme
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]