FROM python:3.14.0b1-alpine3.21
WORKDIR /app
COPY requirements.txt ./
RUN pip install flask --no-cache-dir -r requirements.txt
COPY . /app
EXPOSE 5000
CMD ["python","hello.py"]

