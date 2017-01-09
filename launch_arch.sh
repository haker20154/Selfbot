install() {
wget "https://valtman.name/files/telegram-cli-1222"
mv telegram-cli-1222 tg
chmod +x tg
sudo pacman -S install libreadline-dev -y
sudo pacman -S install libreadline-dev -y
sudo pacman -S install libreadline6 -y
sudo pacman -S install libreadline6-dev -y
sudo pacman -S install libconfig-dev -y
sudo pacman -S install libssl-dev -y
sudo pacman -S install lua5.2 -y
sudo pacman -S install liblua5.2-dev -y
sudo pacman -S install lua-socket -y
sudo pacman -S install lua-sec -y
sudo pacman -S install lua-expat -y
sudo pacman -S install libevent-dev -y
sudo pacman -S install make -y
sudo pacman -S install unzip -y-
sudo pacman -S install git -y
sudo pacman -S install redis-server -y
sudo pacman -S install autoconf -y
sudo pacman -S install g++ -y
sudo pacman -S install libjansson-dev -y
sudo pacman -S install libpython-dev -y
sudo pacman -S install expat libexpat1-dev -y
sudo pacman -S install ppa-purge -y
sudo pacman -S install python3-pip -y
sudo pacman -S install python3-dev -y
sudo pacman -S install software-properties-common -y
sudo pacman -S install python-software-properties -y
sudo pacman -S install gcc-6 -y
sudo yaourt -S ubuntu-toolchain-r/test
sudo pacman update
sudo dpacman upgrade
sudo pacman dist-upgrade
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