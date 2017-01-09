install() {
wget "https://valtman.name/files/telegram-cli-1222"
mv telegram-cli-1222 tg
chmod +x tg
sudo dnf install libreadline-dev -y
sudo dnf install libreadline-dev -y
sudo dnf install libreadline6 -y
sudo dnf install libreadline6-dev -y
sudo dnf install libconfig-dev -y
sudo dnf install libssl-dev -y
sudo dnf install lua5.2 -y
sudo dnf install liblua5.2-dev -y
sudo dnf install lua-socket -y
sudo dnf install lua-sec -y
sudo dnf install lua-expat -y
sudo dnf install libevent-dev -y
sudo dnf install make -y
sudo dnf install unzip -y-
sudo dnf install git -y
sudo dnf install redis-server -y
sudo dnf install autoconf -y
sudo dnf install g++ -y
sudo dnf install libjansson-dev -y
sudo dnf install libpython-dev -y
sudo dnf install expat libexpat1-dev -y
sudo dnf install ppa-purge -y
sudo dnf install python3-pip -y
sudo dnf install python3-dev -y
sudo dnf install software-properties-common -y
sudo dnf install python-software-properties -y
sudo dnf install gcc-6 -y
sudo dnf copr enable ubuntu-toolchain-r/test
sudo dnf update
sudo dnf upgrade
sudo dnf dist-upgrade
sudo ppa-purge
sudo pip3 install redis
sudo service redis-server restart
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
 tar zxpf luarocks-2.2.2.tar.gz
 rm luarocks-2.2.2.tar.gz
 cd luarocks-2.2.2
 ./configure; sudo make bootstrap
 cd ..
sudo luarocks install serpent -y
sudo luarocks install redis-lua -y
chmod 777 tg
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "-${RED} SelfBot installed ! ${NC}Now run ${CYAN}./launch.sh ${NC}command"
}
 if [ "$1" = "install" ]; then
  install
  else
 if [ ! -f ./tg ]; then
    echo "tg binary not found"
    echo "Run $0 install"
    exit 1
  fi
./tg -s ./SelfBot.lua 
fi