# Base Docker File: Runs latest debian build, installs mono, asp.net vnext, and kre
FROM microsoft/aspnet:1.0.0-beta1
MAINTAINER Michael "ItzWarty" Yu
ADD /NonAspNet/ /app/NonAspNet/
ADD /AspNet/ /app/AspNet/
WORKDIR /app/NonAspNet
RUN nuget restore
WORKDIR /app/AspNet
RUN kpm restore
