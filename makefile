install:
	cp geth-openrc /etc/init.d/geth
	chmod +x /etc/init.d/geth
	mkdir -p /var/log/geth
	cp geth-logrotate /etc/logrotate.d/geth

uninstall:
	rm /etc/init.d/geth
	rm /etc/logrotate.d/geth

nuke: uninstall
	rm -rf /var/log/geth
help:
	$(info use 'make install' to install)
	$(info use 'make uninstall' to uninstall)
	$(info use 'make nule' to uninstall and remove logs)
