# https://askubuntu.com/questions/833448/how-can-i-update-visual-studio-code-on-ubuntu
MENU="
-----------------------------------------
Desinstalar Java 11 na Maquina
-----------------------------------------
"
INSTALL(){
echo "$MENU"
sleep 1
echo
echo --------------------------------------------------------
echo -e "\033[31m Deseja Desintalar Java 11 \033[m"
read -p "s (SIM ) e n (NÃO) -->> " CONFIRM
echo --------------------------------------------------------
if [ "$CONFIRM" = s ];then
echo "[ in 2s]"
sleep 1
echo "[ in 1s]"
sleep 1
sudo apt remove oracle-java11-set-default
sudo apt-get update
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
