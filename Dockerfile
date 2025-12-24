# Use the official Kong image as base
FROM kong:3.4

# Set maintainer
LABEL maintainer="kong-gateway"

# Set working directory
WORKDIR /usr/local/kong

# Copy custom configuration files (if any)
# COPY kong.conf /etc/kong/kong.conf

# Copy custom plugins (if any)
# COPY plugins/ /usr/local/share/lua/5.1/kong/plugins/

# Expose Kong ports
# 8000: HTTP proxy port
# 8443: HTTPS proxy port  
# 8001: Admin API port
EXPOSE 8000 8443 8001

# Use the default Kong entrypoint
# The entrypoint is already set in the base image
# You can override it if needed:
# ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["kong", "docker-start"]

