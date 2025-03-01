ARG BUILD_FROM
FROM $BUILD_FROM

# Set up app directory
WORKDIR /app

# Copy the wheel file from the build context
COPY backend-package/*.whl /app/ohc_backend.whl

# Install the wheel file
# Assuming the wheel file is in the root of the extracted directory
# If it's in a specific location, adjust the path accordingly
RUN pip install /app/ohc_backend.whl


# Copy root filesystem
COPY rootfs /

# Ensure scripts are executable
RUN chmod a+x /etc/services.d/fastapi/run
RUN chmod a+x /etc/services.d/fastapi/finish

CMD ["/init"]