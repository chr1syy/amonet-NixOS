#!/usr/bin/env bash

set -e

fastboot flash recovery bin/recovery.img
fastboot oem reboot-recovery

echo ""
echo ""
echo "Your device should now reboot into Amazon recovery"
echo ""
