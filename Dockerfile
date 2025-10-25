# Use the official PHP image from Docker Hub
FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Copy all files from your repo to the container
COPY . /var/www/html/

# Install required PHP extensions (optional, but helpful)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose Render's dynamic port
EXPOSE 10000

# Pass environment variables to PHP
# Render automatically injects variables from your dashboard into the container
ENV PORT=10000

# Start PHP built-in server
CMD ["php", "-S", "0.0.0.0:10000", "-t", "."]
