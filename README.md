# ajdiaz/collectd

This docker image provides a basic colled execution inside a docker
container.

To run the container, first create a local configuration to be bypassed to
the container:

  mkdir ~/.collectd
  # create some collectd config files there as you wish

Run the container:

  docker run -d -v ~/.collectd:/etc/collectd/collectd.conf.d ajdiaz/collectd

Also you probably wants to use rrdtool plugin and then export RRD files to
an external volume too:

  docker run -d -v ~/.collectd:/etc/collectd/collectd.conf.d -v ~/.rrdfiles:/var/lib/collectd/rrd ajdiaz/collectd

