#
# Makefile
# ajdiaz, 2015-01-10 11:14
#

CONTAINER_NAME="ajdiaz/collectd"

build:
	docker build -t $(CONTAINER_NAME) --rm --force-rm --no-cache .

remove:
	docker rmi -f $(CONTAINER_NAME)


# vim:ft=make
#
