FROM ubuntu:latest

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Set the working directory
WORKDIR /var/www/html

# Copy code into the container
COPY . /var/www/html

# Expose port 82 for master branch
EXPOSE 82

# Command to start Apache
CMD ["apache2ctl"]
