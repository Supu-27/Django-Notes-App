FROM python:3.9

MAINTAINER Supriya Surkar <surkarsupriya97@gmail.com>
WORKDIR /app/backend

COPY requirements.txt /app/backend
RUN pip install -r requirements.txt && pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install --upgrade setuptools && rm -rf /root/.cache

COPY . /app/backend

EXPOSE 8000

CMD python /app/backend/manage.py runserver 0.0.0.0:8000

