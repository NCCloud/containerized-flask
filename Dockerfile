# --------------------------------------------------------------------------
# When Docker builds the flask container, it builds it from this image.
#
# This file pulls a Python 3 image from Docker Hub (a sort of
# GitHub for Docker images), and copies the requirements.txt file to the
# container. It then installs all the Python dependencies from it.
# --------------------------------------------------------------------------

FROM python:3.7.2

ENV PYTHONDONTWRITEBYTECODE=True

RUN mkdir -p /app
WORKDIR /app

ADD ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

ADD . /app
