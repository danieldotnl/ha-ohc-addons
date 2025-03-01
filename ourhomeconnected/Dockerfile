ARG BUILD_ARCH
ARG BUILD_FROM=ghcr.io/home-assistant/${BUILD_ARCH}-base-python:3.13-alpine3.21
FROM ${BUILD_FROM}

WORKDIR /app

# Copy in the OHC Backend wheel file
COPY backend-package/*.whl /app/

# Create directory structure
RUN mkdir -p /data

# Install the backend
RUN pip install --no-cache-dir /app/*.whl

# Copy root filesystem
COPY rootfs /

# Ensure scripts are executable
RUN chmod a+x /etc/services.d/ohc/run
RUN chmod a+x /etc/services.d/ohc/finish

# Expose the web interface
EXPOSE 8000

# Command to use S6 overlay init
CMD ["/init"]