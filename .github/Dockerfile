ARG BUILD_FROM=python:3.13-slim
FROM ${BUILD_FROM}

# Copy built packages
WORKDIR /app

# Copy the OHC Backend wheel file
COPY ohc-backend.whl /app/

# Create directories
RUN mkdir -p /data

# Install the backend
RUN pip install --no-cache-dir /app/ohc-backend.whl

# Expose the web interface
EXPOSE 8000

# Start the application
CMD ["python", "-m", "ohc_backend"]