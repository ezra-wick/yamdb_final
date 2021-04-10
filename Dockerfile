FROM python:3.9
WORKDIR /code
COPY . .
RUN pip install -r /code/requirements.txt
RUN python manage.py collectstatic --noinput
#Я не знаю как их объединить в docker-compose