FROM python:3.7-alpine

USER root

WORKDIR /app

ADD . /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8050

ENV NAME course-dag

CMD ["python", "/app/app.py"]
