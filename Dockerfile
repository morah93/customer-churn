# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /main

# Copy the current directory contents into the container at /app
COPY . /main

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Streamlit will run on
EXPOSE 8501

# Run Streamlit
CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.enableCORS=false"]
