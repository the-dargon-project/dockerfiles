# Base Docker File: Runs latest debian build, installs mono, asp.net vnext, and kre
FROM microsoft/aspnet:1.0.0-beta1
MAINTAINER Michael "ItzWarty" Yu

ADD . /app/

WORKDIR /app/AspNet
RUN kpm restore

WORKDIR /app/NonAspNet
RUN kpm restore

WORKDIR /app/src/TestWebApplication

EXPOSE 5004

ENTRYPOINT ["k", "kestrel"]