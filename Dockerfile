FROM golang:1.6
MAINTAINER tocky

RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-jessie main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update && apt-get install -y google-cloud-sdk google-cloud-sdk-app-engine-go

EXPOSE 8000 8080

CMD ["make", "serve"]
