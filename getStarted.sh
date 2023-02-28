# Reset
NC='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

echo -e "+******************************************************************************************************+\n"
echo -e "*                                    Updating/Upgrading/installing                                     *\n"
echo -e "+******************************************************************************************************+\n"
echo -e "${BYellow}"
sudo apt-get -y update && echo -e "- ${BGreen}[OK] Updated${NC}"
echo -e "${BYellow}"
sudo apt-get -y upgrade && echo -e "- ${BGreen}[OK] Upgraded${NC}\n"
sudo apt-get -y install zsh docker.io curl make vim git >> log.info
# sudo echo "127.0.0.1       rsaf.42.fr" > /etc/hosts
echo -e "+******************************************************************************************************+\n"
echo -e "*                                             Docker Setup                                             *\n"
echo -e "+******************************************************************************************************+\n"
# ***************************************************************************************************** #

# sudo service nginx start && echo -e "- ${BGreen}[OK] nginx is start${NC}"
sudo chmod 777 /var/run/docker.sock && echo -e "- ${BGreen}[OK] /var/run/docker.sock permisson gived${NC}"
sudo groupadd docker && echo -e "- ${BGreen}[OK] Docker Group Created${NC}"
sudo usermod -aG docker ${USER} && echo -e "- ${BGreen}[OK] ${USER} added To Docker Group${NC}"

# ***************************************************************************************************** #
getent group docker > DockerGroupUsers.info && echo -e "- ${BGreen}[OK] Docker Group with Users Created${NC}"
ip addr | grep "inet " > sshFile.info && echo -e "- ${BGreen}[OK] ip file created for SSH access${NC}"

# ***************************************************************************************************** #
echo -e "+******************************************************************************************************+\n"
echo -e "*                                             Done/versions                                            *\n"
echo -e "+******************************************************************************************************+\n"
echo -e "${BCyan}"
sudo zsh --version
sudo nginx -v
sudo docker -v
echo -e "${NC}"
echo -e "+******************************************************************************************************+\n"
echo -e "*                                                Finished                                              *\n"
echo -e "+******************************************************************************************************+\n"





# useful cmnds for copy/past m lazy cmon :/
## sudo cp Cnginx.conf /etc/nginx/nginx.conf
## systemctl status nginx
## sudo systemctl reload nginx
