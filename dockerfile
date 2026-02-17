FROM python:3

WORKDIR /src/project

COPY requirements.txt .

RUN pip install --no-cache-dir -r /src/project/requirements.txt

COPY . .

EXPOSE 10000

CMD ["uvicorn","/src/project/app:app", "--host", "0.0.0.0", "--port", "10000"]