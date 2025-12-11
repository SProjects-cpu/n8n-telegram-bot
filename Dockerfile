FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=America/New_York
ENV N8N_METRICS=true

# Use SQLite with persistent storage
ENV DB_TYPE=sqlite
ENV DB_SQLITE_VACUUM_ON_STARTUP=true

# Disable config file permissions check
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Disable version notifications
ENV N8N_VERSION_NOTIFICATIONS_ENABLED=false

# Disable basic auth
ENV N8N_BASIC_AUTH_ACTIVE=false

# Trust proxy for Railway
ENV N8N_TRUST_PROXY=true

# Expose Railway port
EXPOSE 8080

# Create data directory for persistent storage
RUN mkdir -p /data

# Set volume for persistent data
VOLUME /data