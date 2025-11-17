# ---- Builder Stage ----
FROM rustlang/rust:nightly AS builder

# Install git to clone the repo
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Clone the nntp-proxy repository
RUN git clone --branch main https://github.com/Pukabyte/rescan/.git .

# ---- Runtime Stage ----
FROM python:3.11-slim

COPY rescan.py .
COPY config.ini .

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "/app/config/rescan.py"] 