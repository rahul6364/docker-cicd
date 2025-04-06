# Use the official Nginx image
FROM nginx:alpine

# Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files to the Nginx HTML folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx runs automatically, no need for CMD
