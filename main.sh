#!/bin/bash

set -x
set -e
set -o nounset
set -o pipefail

readonly SYSTEMD_UNIT="${1}"
if [ "${EXIT_STATUS}" != 0 ]; then
	notify-send --action=logs='View Logs' --action=restart=Restart --app-name=systemd-unit "${SYSTEMD_UNIT}" Failed |
	while read -r action; do
		if [ "${action}" = logs ]; then
			open-in-terminal journalctl --user-unit "${SYSTEMD_UNIT}" --since today
		fi
		if [ "${action}" = restart ]; then
			systemctl --user restart "${SYSTEMD_UNIT}" --no-block
		fi
	done
fi
