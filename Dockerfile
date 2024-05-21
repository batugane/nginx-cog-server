# Use the official NGINX base image
FROM nginx:latest

# Copy the custom NGINX main configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the server-specific configuration file to the container
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy the COG files to the container
COPY cog_files /usr/share/nginx/html/cog_files

# Expose port 80
EXPOSE 80
