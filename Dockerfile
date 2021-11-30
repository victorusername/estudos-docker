FROM python:3.9.9-bullseye

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 5000

ENV FLASK_ENV development

CMD [ "flask", "run", "--host", "0.0.0.0" ]