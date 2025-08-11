# Use a lightweight Nginx image to serve the files
FROM nginx:alpine

# Copy the HTML file(s) from your local project into the Nginx web root directory
# Assuming your index.html is in the root of your repository
COPY index.html /usr/share/nginx/html

# Expose port 80, which Nginx uses by default
EXPOSE 80

# Command to run Nginx, which is built into the image
CMD ["nginx", "-g", "daemon off;"]