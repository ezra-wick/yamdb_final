FROM python:3.9
WORKDIR /code
COPY . /code
RUN pip install -r /code/requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
# У меня на комьютере всё запускается без CMD, но тест почему-то его требует