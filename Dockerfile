# Use an official Nginx runtime as the base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove existing files
RUN rm -rf ./*

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Command to run the app
CMD ["nginx", "-g", "daemon off;"]

