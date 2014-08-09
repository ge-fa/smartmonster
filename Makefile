install:
	cp files/file_system_reporter.sh $(DESTDIR)/usr/bin/
	cp files/update_power_counter.sh $(DESTDIR)/usr/bin/
	cp files/99_smartmonster_sleep.d.sh $(DESTDIR)/etc/pm/sleep.d/
