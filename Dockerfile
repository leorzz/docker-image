FROM python:3.10-alpine
WORKDIR /usr/src/app
COPY requirements_all.txt ./
RUN pip install --no-cache-dir --upgrade pip

CMD ["python"]