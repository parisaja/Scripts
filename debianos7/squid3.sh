#Squid Proxy 3.1
#Emax Space

apt-get -y install aptitude curl

# Specify our IP Server
if [ "$IP" = "" ]; then
        IP=$(curl -s ifconfig.me)
fi

aptitude -y install squid3

rm -f /etc/squid3/squid.conf

wget -P /etc/squid3/ "https://raw.githubusercontent.com/PakTam/debianos7/master/squid.conf"

sed -i 's/#cache_dir/cache_dir/g' /etc/squid3/squid.conf

sed -i "s/ipserver/$IP/g" /etc/squid3/squid.conf

/etc/init.d/squid3 restart
