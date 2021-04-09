FROM python:3.9
WORKDIR /code
COPY . /code
RUN pip install -r /code/requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 178.154.200.106:8000
