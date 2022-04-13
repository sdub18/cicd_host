FROM python:3.9

WORKDIR /test

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r /test/requirements.txt

COPY ./app /test/app

CMD uvicorn app.main:app --host 0.0.0.0 --port 8000