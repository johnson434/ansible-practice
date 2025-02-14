FROM ubuntu
WORKDIR /root
RUN \
	apt update && apt install -y vim ssh curl
RUN \
	mkdir -p /var/run/sshd && \
	chmod 0755 /var/run/sshd
RUN \
	sed -i -E 's/# *Port *[0-9]+/Port 22/g' /etc/ssh/sshd_config
COPY ./id_rsa.pub .ssh/authorized_keys
COPY ./entry_point.sh .
ENTRYPOINT ["/bin/sh", "./entry_point.sh"]
EXPOSE 80/tcp
EXPOSE 22/tcp
