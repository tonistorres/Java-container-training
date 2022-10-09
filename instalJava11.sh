# https://askubuntu.com/questions/833448/how-can-i-update-visual-studio-code-on-ubuntu
MENU="
-----------------------------------------
Instalando Java 11 na Maquina
-----------------------------------------
"
INSTALL(){
echo "$MENU"
sleep 1
echo
echo --------------------------------------------------------
echo -e "\033[31m Deseja Atualizar Instalar Java 11 \033[m"
read -p "s (SIM ) e n (NÃO) -->> " CONFIRM
echo --------------------------------------------------------
if [ "$CONFIRM" = s ];then
echo "[ in 2s]"
sleep 1
echo "[ in 1s]"
sleep 1
sudo apt-get update
sudo echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu bionic main" | tee /etc/apt/sources.list.d/linuxuprising-java.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A
sudo apt-get update
sudo apt-get install oracle-java11-installer
sudo apt install oracle-java11-set-default
java -version
javac -version

else
echo 'exit in 3s'
sleep 1
echo 'exit in 2s'
sleep 1
echo 'exit in 1s'
sleep 1
echo 'The End Execution'
fi
}

INSTALL
