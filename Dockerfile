FROM nginx:latest

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/mavi-fiot/IITLR45v4dock.git /tmp/IITLR45v4ins

RUN cp -r /tmp/IITLR45v4ins/* /usr/share/nginx/html/

RUN rm -rf /tmp/IITLR45v4ins


