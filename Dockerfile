FROM python:3.10-alpine
RUN --mount=type=secret,id=github_token \
  cat /run/secrets/github_token
WORKDIR /usr/src/app
COPY requirements_all.txt ./
RUN pip install --no-cache-dir --upgrade pip

CMD ["python"]