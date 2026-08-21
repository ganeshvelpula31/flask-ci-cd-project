FROM python:3.13-slim

WORKDIR /app

COPY requirement.txt .

RUN pip install --no-cache-dir -r requirement.txt

COPY app.py .
COPY test_app.py .

EXPOSE 5000

CMD ["python", "app.py"]