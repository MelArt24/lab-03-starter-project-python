FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["uvicorn", "spaceship.app:make_app", "--factory", "--host", "0.0.0.0", "--port", "8000"]


#
# FROM python:3.13-slim
#
# WORKDIR /app
#
# COPY requirements.txt .
#
# RUN pip install --no-cache-dir -r requirements.txt
#
# COPY . .
#
# EXPOSE 8000
#
# CMD ["uvicorn", "spaceship.app:make_app", "--factory", "--host", "0.0.0.0", "--port", "8000"]
