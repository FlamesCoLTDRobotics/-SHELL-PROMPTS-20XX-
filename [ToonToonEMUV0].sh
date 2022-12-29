#!/bin/bash

# Shut down the MacBook
shutdown -h now
#[Toon Toon EMU 1.0]
# Wait for the MacBook to shut down
# This sleep command is unnecessary, as the shutdown command will
# cause the MacBook to shut down immediately.
sleep 60

# Start up the MacBook in recovery mode
# This command sets the boot arguments in NVRAM to "-x", which will
# cause the MacBook to start up in recovery mode.
nvram boot-args="-x"

# Restart the MacBook
shutdown -r now

# Wait for the MacBook to restart
# This sleep command is unnecessary, as the shutdown command will
# cause the MacBook to restart immediately.
sleep 60

# Reset the SMC (System Management Controller)
pmset -a sms 0

# Shut down the MacBook
shutdown -h now
