#!/bin/sh

# If no shadow file exists, it will be copied by the S15localfsinit.sh.
if [ -f /etc/local/shadow ]
then
	echo "Updating /etc/shadow"

	cat /etc/shadow_skel /etc/shadow | /usr/bin/passwd_merge.py > \
		/tmp/shadow

	mv /tmp/shadow /etc/local/shadow
fi

# If run by rcS, remove the init.d link.
if [ -n "$INITFILE" ]; then
	rm -f $INITFILE
fi
