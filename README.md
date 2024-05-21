
# NGINX COG Server

This repository contains the setup for an NGINX server configured to serve Cloud Optimized GeoTIFF (COG) files. The server supports byte-range requests, which is essential for efficiently handling large geospatial data files.

## Features

- Efficiently serves pre-compressed COG files
- Supports byte-range requests
- Configured for optimal performance

## Setup

1. **Build the Docker image:**
   ```sh
   docker-compose build
   ```

2. **Run the Docker Compose setup:**
   ```sh
   docker-compose up -d
   ```

## File Structure

- `Dockerfile` - Configuration for the Docker image.
- `docker-compose.yml` - Configuration for Docker Compose.
- `nginx.conf` - Main NGINX configuration file.
- `default.conf` - Server-specific NGINX configuration.
- `cog_files/` - Directory containing the COG files to be served.

## Accessing the Server

Access your COG files via:
```
http://localhost/cog_files/your_cog_file.tif
```
