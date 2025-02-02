ARG PYTHON_VERSION=3.11.4
FROM python:${PYTHON_VERSION}-slim AS base

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

#RUN python -m pip install -r requirements.txt
COPY . .

CMD python3 server.py -s {$SOURCEIPADDR}
