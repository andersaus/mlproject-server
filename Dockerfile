FROM python:3.11.5-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8080

COPY . .

CMD ["python3", "server.py"]