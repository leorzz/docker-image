# FROM python:3.10-alpine
FROM python:3.10.5-slim-buster
WORKDIR /usr/src/app
COPY requirements_all.txt ./
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements_all.txt
CMD ["python"]