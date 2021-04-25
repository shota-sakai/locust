FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install locust
RUN mkdir /locust
ADD ./locustfile.py /locust/locustfile.py

EXPOSE 5557 5558 8089

# ENTRYPOINT ["/usr/local/bin/locust", "-f", "/locust/locustfile.py"]