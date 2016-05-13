FROM node:6
MAINTAINER Mike Christof <mhristof@gmail.com>

#RUN apt-get update
RUN apt-get update && apt-get install -y unzip
#RUN wget https://github.com/seejohnrun/haste-server/archive/master.zip &&\
    #unzip master.zip && rm master.zip &&\
COPY ./ /haste
RUN cd haste &&\
    npm install

CMD bash -c 'cd /haste && npm start'
