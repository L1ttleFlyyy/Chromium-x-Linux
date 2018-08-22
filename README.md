# Chromium-x-Linux
## First step: tweak touchpad

Modify 40-touchpad.conf in /etc/gesture

An example is listed above.

```shell
Option  "Tap Minimum Pressure" "0.1" # the pressure to trigger tap-to-click (the less the easier)
Option  "Tap Move Distance" "9" # the distance to trigger tap dragging (the more the easier)
```
## Second step: change passwd
```
sudo mount -o remount,rw /
sudo passwd chronos
enter a UNIX password...
```

## Third step: install pip and shadowsocks
```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo pip install shadowsocks
```
sslocal.json is located in /etc/shadowsocks
sslocal.conf is located in /etc/init which can be controled by:
sslocal.sh is located in /etc/init.d
```
sudo initctl start sslocal
```

Create two new profile in extension SwitchyOmega:
1. proxy

socks5 localhost 1080

2. auto switch

add condition manually

## Fourth step: install intel-undervolt and msrtools
get the zip and tar.gz pack above
```
unzip ...
tar -xzvf ...
make && make install
```

intel-undervolt.conf is located in /etc/ and needs to be modified.

intel-uv.conf is located in /etc/init which can be controlled by:

startup.sh is located in /etc/init.d

```
sudo initctl start intel-uv
```

## Miscellaneous
1. Rootfs verification:
```
sudo mount -o remount,rw /
```
2. Downloads folder is located in /home/chronos/user/Downloads

3. Some features in settings:
Tap dragging

