FROM ubuntu
RUN apt-get update

RUN apt-get install -y python3 python3-pip
RUN mkdir opt/app
WORKDIR opt/app
COPY . .

RUN pip3 install -r requirements.txt
CMD ["python3", "app.py"]