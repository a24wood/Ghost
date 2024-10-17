# Use the official Ghost image as the base image
FROM ghost:latest

# Set the working directory inside the container
WORKDIR /var/lib/ghost

# Copy your local Ghost blog content into the container
COPY . /var/lib/ghost

# Ensure correct ownership and permissions
RUN chown -R node:node /var/lib/ghost

# Expose the default Ghost port
EXPOSE 2368

# No CMD instruction needed; use the one from the base image