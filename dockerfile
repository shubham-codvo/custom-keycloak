# Dockerfile
FROM quay.io/keycloak/keycloak:latest

# Set environment variables
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin

# Copy themes and certificates
COPY ./keycloak/themes/exin /opt/keycloak/themes/exin
# COPY ./certs /certs

# RUN chown -R root:root /certs
# RUN chmod -R 444 /certs

# Expose port
EXPOSE 8443
EXPOSE 8080

# Start command
CMD ["start-dev"]