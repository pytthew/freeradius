FROM debian
RUN apt update && apt install -yy freeradius-dhcp
ENTRYPOINT ["/etc/init.d/freeradius", "start"]
COPY freeradius /etc/init.d/freeradius
