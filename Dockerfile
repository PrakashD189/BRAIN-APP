FROM public.ecr.aws/nginx/nginx:latest

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files
COPY dist/ /usr/share/nginx/html/

# Expose port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
