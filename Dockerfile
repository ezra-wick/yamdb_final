FROM python:3.9
WORKDIR /code
COPY . .
RUN pip install -r /code/requirements.txt \
    && python manage.py collectstatic --noinput