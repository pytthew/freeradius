FROM debian
RUN apt update && apt install -yy freeradius-dhcp
ENTRYPOINT ["/etc/init.d/freeradius", "start"]
ADD freeradius /etc/init.d/freeradius
RUN chmod 755 /etc/init.d/freeradius
