# klipper-extended-corexy-kinematic

# Based on [SnakeOil Extended CoreXY Klipper Module](https://github.com/SnakeOilXY/klipper-extended-corexy-kinematic)
Klipper module for extended-corexy kinematic support. 

## Adjusted by the VzBoT team for specific docs.

## 1. Introduction
This kinematic is based on traditional CoreXY and hybrid-CoreXY (aka Markforged kinematic), aiming to improve the performance of large CoreXY-based 3D printers.

Check [kinematic page](./doc/kinematic.md) for more information about this kinematic.

![](./doc/extended_corexy.png)

## 3. Installation

Install kinematic file
<pre>
cd ~
git clone https://github.com/VzBoT3D/klipper-extended-corexy-kinematic
cd klipper-extended-corexy-kinematic
./install.sh
</pre>

## Add to Moonraker Update manager
<pre>
# Extendeded corexy entry
[update_manager vz-extended-corexy]
type: git_repo
path: ~/klipper-extended-corexy-kinematic
origin: https://github.com/VzBoT3D/klipper-extended-corexy-kinematic.git
primary_branch: master
managed_services: klipper
install_script: install.sh
</pre>

## 4. Test data

![Input shaper test result on a 500x400x300mm machine](./doc/shaper-500x400.png)

<center>Input shaper test result on a 500x400x300mm machine</center>
