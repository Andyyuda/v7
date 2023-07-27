# v7
# [Step Install]
- Step 1 for (debian) please update first
```
apt update && apt upgrade -y && reboot
```
- Step 2 for (ubuntu) directly install
```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/Andyyuda/v7/main/testsetup.sh && chmod +x testsetup.sh && sed -i -e 's/\r$//' testsetup.sh && screen -S testsetup ./testsetup.sh
```
