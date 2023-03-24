FROM python:3.10-alpine
WORKDIR /usr/src/app
RUN --mount=type=secret,id=github_token \
  cat /run/secrets/github_token
COPY requirements_all.txt ./
RUN pip install --no-cache-dir --upgrade pip

CMD ["python"]