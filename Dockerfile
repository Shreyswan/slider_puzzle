# Use an official Python base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy everything into /app
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app runs on (change if needed)
EXPOSE 5060

# Run your app (update if you use a different entry point)
CMD ["pygbag", "slide.py"]

