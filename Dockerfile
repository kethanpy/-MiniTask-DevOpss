# FROM python:3.12-slim
# WORKDIR /app

# # TODO 1: Copy requirements.txt into the image.
# # TODO 2: Install Python dependencies with pip.
# # TODO 3: Copy the app/ folder into /app/app/.
# # TODO 4: Document the port the API listens on.
# # TODO 5: Start uvicorn app.main:app on host 0.0.0.0 port 8000.
FROM python:3.12-slim

WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY app ./app

# Expose API port
EXPOSE 8000

# Start FastAPI application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]