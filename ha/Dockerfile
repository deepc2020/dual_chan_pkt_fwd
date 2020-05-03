ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN mkdir -p /home/pi

WORKDIR /home/pi

RUN apk add --no-cache git build-base wiringpi-dev sudo
RUN git clone https://github.com/deepc2020/dual_chan_pkt_fwd.git
RUN cd dual_chan_pkt_fwd && make && make install


# Copy data for add-on
COPY run.sh /
COPY global_conf.json /home/pi/dual_chan_pkt_fwd/
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
