FROM python:3.7.2-alpine3.8

COPY ./app /opt/project
WORKDIR /opt/project

RUN pip install -r requirements.txt

EXPOSE 80

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]
