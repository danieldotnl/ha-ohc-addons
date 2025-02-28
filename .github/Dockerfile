ARG BUILD_FROM=ghcr.io/home-assistant/${BUILD_ARCH}-base-python:3.13-alpine3.21
FROM ${BUILD_FROM}

WORKDIR /app

# Copy in the OHC Backend wheel file
COPY *.whl /app/

# Create directory structure
RUN mkdir -p /data

# Install the backend with necessary build dependencies
RUN apk add --no-cache gcc musl-dev python3-dev \
    && pip install --no-cache-dir /app/*.whl \
    && apk del gcc musl-dev python3-dev

# Copy frontend files (for future)
COPY frontend/ /app/frontend/

# Expose the web interface
EXPOSE 8000

# Command to run your application
CMD ["python", "-m", "ohc_backend"]