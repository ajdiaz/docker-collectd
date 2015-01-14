# Image to run collectd in a container
FROM ubuntu:14.04
MAINTAINER Andrés J. Díaz <ajdiaz@connectical.com>

# Install required packages
RUN apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y collectd collectd-utils
ADD collectd.conf /etc/collectd/collectd.conf

# Install config
CMD /usr/sbin/collectd -f -C /etc/collectd/collectd.conf
EXPOSE 25826/udp
