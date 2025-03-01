#!/usr/bin/with-contenv bashio

# Create any directories or perform setup tasks before the main service starts
mkdir -p /app/data

# Log startup info
bashio::log.info "Starting Our Home Connected add-on..."