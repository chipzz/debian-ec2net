.PHONY: clean install
clean:

install:
	install -m 644 -D -t $(DESTDIR)/lib/udev/rules.d 53-ec2-network-interfaces.rules
	install -m 644 -D ec2dhcp $(DESTDIR)/lib/ec2net/dhcp
	install -m 644 ec2net-functions $(DESTDIR)/lib/ec2net/functions
	install -m 755 ec2net.hotplug $(DESTDIR)/lib/udev/ec2net
