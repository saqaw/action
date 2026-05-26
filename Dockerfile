# 1. Use an official lightweight Python base image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /tests

# 3. Copy only requirements first to leverage Docker's cache
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application source code
COPY . .