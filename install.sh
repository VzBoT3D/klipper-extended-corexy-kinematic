#!/bin/bash
KLIPPER_PATH="${HOME}/klipper"

if [ "$EUID" -eq 0 ]; then
    echo "[VZ] This script must not run as root"
    exit -1
fi

set -e

SRCDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/ && pwd )"
echo "[VZ] Linking extended_corexy.py to Klipper kinematic directory"
ln -sf "${SRCDIR}/src/extended_corexy.py" "${KLIPPER_PATH}/klippy/kinematics/extended_corexy.py"
echo "[VZ] Restarting Klipper..."
sudo systemctl restart klipper

