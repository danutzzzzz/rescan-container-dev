# ---- Builder Stage ----
FROM debian:bookworm-slim AS builder

# Install git to clone the repo
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Clone the rescan repository (using master branch)
RUN git clone --branch master https://github.com/Pukabyte/rescan.git .

# ---- Runtime Stage ----
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files from the builder stage
COPY --from=builder /app/rescan.py .
COPY --from=builder /app/config.ini .
COPY --from=builder /app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python", "rescan.py"]