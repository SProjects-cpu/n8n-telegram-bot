FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=America/New_York
ENV N8N_METRICS=true

# Use SQLite for simplicity
ENV DB_TYPE=sqlite
ENV DB_SQLITE_VACUUM_ON_STARTUP=true

# Disable config file permissions check
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Disable version notifications
ENV N8N_VERSION_NOTIFICATIONS_ENABLED=false

# Set basic auth (optional, can be removed if not needed)
ENV N8N_BASIC_AUTH_ACTIVE=false

# Expose Railway default port
EXPOSE 8080

# Create directory for SQLite database
RUN mkdir -p /home/node/.n8n

# The base image already has the correct ENTRYPOINT and CMD
# We don't need to override anything - just let it run with our ENV vars
# SQLite database will be created automatically on first run