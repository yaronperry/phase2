FROM python:3.14.0b1-alpine3.21
WORKDIR /app
copy . /app
RUN pip install flask
EXPOSE 5000
CMD ["python","hello.py"]

