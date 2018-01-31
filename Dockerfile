FROM python:3.6

RUN mkdir /app
WORKDIR /app

# Install wheel & update setup tools
RUN pip install -U pip setuptools wheel

RUN pip install --use-wheel numpy==1.14.0 pandas==0.22.0

# Install other dependencies
# ADD ./requirements.pip /app/
# RUN pip install -r /app/requirements.pip

CMD python /app/app.py
