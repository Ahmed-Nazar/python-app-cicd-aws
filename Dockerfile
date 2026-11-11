FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install uv

WORKDIR /app

RUN uv pip install --system -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT ["python3", "api/index.py"]