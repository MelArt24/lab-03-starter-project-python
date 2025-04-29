
FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt .

RUN apk add --no-cache build-base libffi-dev

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "spaceship.app:make_app", "--factory", "--host", "0.0.0.0", "--port", "8000"]
