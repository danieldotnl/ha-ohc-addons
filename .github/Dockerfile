ARG BUILD_ARCH
ARG BUILD_FROM=ghcr.io/home-assistant/${BUILD_ARCH}-base-python:3.13-alpine3.21
FROM ${BUILD_FROM}

WORKDIR /app

# Copy in the OHC Backend wheel file
COPY *.whl /app/

# Create directory structure
RUN mkdir -p /data

# Install the backend
RUN pip install --no-cache-dir /app/*.whl

# Copy frontend files (for future)
COPY frontend/ /app/frontend/

# Add Home Assistant add-on labels
LABEL \
    io.hass.version="1.0.0" \
    io.hass.type="addon" \
    io.hass.arch="aarch64|amd64"

# Copy run script (create this if you don't have one)
COPY run.sh /
RUN chmod a+x /run.sh

# Expose the web interface
EXPOSE 8000

# Command to run your application
ENTRYPOINT ["/run.sh"]