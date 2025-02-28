#!/usr/bin/with-contenv bashio
# (This is a typical Home Assistant add-on script header)

set -e

# Logging function
log() {
    echo "[OHC STARTUP] $1"
}

# Verify variables (optional)
log "Before:"
log "ENVIRONMENT: $ENVIRONMENT"
log "HA_SERVER: $HA_SERVER"
log "HA_DATA_FOLDER: $HA_DATA_FOLDER"

# Set environment variables with logging
log "Setting environment variables"
export ENVIRONMENT=prod
export HA_SERVER=http://supervisor/core
export HA_DATA_FOLDER=/data

# Verify variables (optional)
log "After:"
log "ENVIRONMENT: $ENVIRONMENT"
log "HA_SERVER: $HA_SERVER"
log "HA_DATA_FOLDER: $HA_DATA_FOLDER"

# Run the application
log "Starting OHC Backend"
exec python -m ohc_backend