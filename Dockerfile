# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Install bash and other utilities
RUN apt-get update && apt-get install -y \
  bash \
  curl \
  vim

# Set the working directory
WORKDIR /bookmark-manager

# Copy the project files into the container
COPY . .

# Expose port 8080 (optional, if you add a web interface later)
EXPOSE 8080

# Make sure the scripts are executable
RUN chmod +x /bookmark-manager/scripts/*

# Command to run the bookmark manager by default
CMD ["bash", "scripts/view_bookmarks.sh"]
