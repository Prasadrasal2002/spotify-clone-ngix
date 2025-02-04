# Use the latest Ubuntu base image
FROM ubuntu:latest  
# Update packages and install Nginx  
RUN apt update -y && apt install nginx -y  
# Copy application files to the Nginx web root directory  
COPY . /var/www/html/  
# Expose port 80 for web 
EXPOSE 80  
# Start Nginx in the foreground to keep the container running  
CMD ["nginx", "-g", "daemon off;"]
