FROM maven:3-jdk-8


RUN apt-get update && apt-get install -y \
    imagemagick \
 && rm -rf /var/lib/apt/lists/* \
 && ln -s /usr/bin/identify /usr/local/bin/identify \
 && ln -s /usr/bin/convert /usr/local/bin/convert
