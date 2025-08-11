# Use a lightweight Nginx image to serve the files
FROM nginx:alpine

# Copy the HTML file(s) from your local project into the Nginx web root directory
# The `.` represents all the files in your project's root folder
COPY . /usr/share/nginx/html

# Expose port 80, which Nginx uses by default
EXPOSE 80

# Command to run Nginx, which is built into the image
CMD ["nginx", "-g", "daemon off;"]