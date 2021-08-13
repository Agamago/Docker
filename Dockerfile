# Installs the smallest linux image needed for our job from alpine
FROM python:3.7-alpine
CMD ["echo", "Hello World!"]
# Sets Environment variable to make python output directly sent to the terminal
ENV PYTHONBUFFERED 1

# Installs application dependencies
RUN pip install selenium
RUN pip install beautifulsoup4

# Creates empty folder on image and makes it the default directory. This is where source code runs from
RUN mkdir /app
COPY ./app /app
WORKDIR /app