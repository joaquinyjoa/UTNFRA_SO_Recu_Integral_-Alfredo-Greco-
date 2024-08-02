sudo vim /usr/local/bin/Alfredo_Greco_check_URL.sh
sudo chmod 777 /usr/local/bin/Alfredo_Greco_check_URL.sh
sudo mkdir -p /tmp/head-check/{Error/{cliente,servidor},ok}
sudo touch /var/log/status_URL.log
sudo vim /var/log/status_URL.log
sudo mkdir -p /home/JoaquinAlfredo/202408/bash_script/
sudo /usr/local/bin/Alfredo_Greco_check_URL.sh /home/JoaquinAlfredo/202408/bash_script/Lista_URL.txt
