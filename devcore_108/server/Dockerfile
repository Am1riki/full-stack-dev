FROM python:latest

WORKDIR /server

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 4322

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4322"]