FROM python:3.9

WORKDIR /code

COPY . .

RUN pip install -r /code/requirements.txt

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
