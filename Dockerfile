FROM python:3.8-alpine

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1


WORKDIR /user/src/app
RUN pip install --upgrade pip

RUN apk add libpq-dev gcc postgresql-dev zlib-dev jpeg-dev

COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt 

COPY ./entrypoint.sh /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

COPY . .
RUN chmod -R 777 .

# RUN python3 manage.py makemigrations
# RUN python3 manage.py migrate

ENTRYPOINT ["sh", "/usr/src/app/entrypoint.sh"]
