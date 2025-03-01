ARG BUILD_FROM
FROM $BUILD_FROM

# Set up app directory
WORKDIR /app

# Install python and pip if they're not already available
RUN apk add --no-cache python3 py3-pip

# Copy the wheel file from the build context
COPY backend-package/*.whl /app/ohc_backend.whl

# Install the wheel file using pip3
RUN pip3 install /app/ohc_backend.whl

# Copy root filesystem
COPY rootfs /

# Ensure scripts are executable
RUN chmod a+x /etc/services.d/ohc/run
RUN chmod a+x /etc/services.d/ohc/finish

CMD ["/init"]