# Use the official Python image as a base image
FROM python:3.6-alpine

ADD . /code

WORKDIR /code

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

EXPOSE 5000

CMD ["python", "app.py"]
