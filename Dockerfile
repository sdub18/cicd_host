FROM python:3.9

WORKDIR /test

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r /test/requirements.txt

COPY startup.sh .

COPY ./app /test/app

# Run alembic configuration
CMD ["./startup.sh"]