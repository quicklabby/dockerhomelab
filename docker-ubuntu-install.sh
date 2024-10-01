#!/bin/bash
#Bash script to install docker and docker compose in Ubuntu and restore a docker backup directory or create a new one if no backup is found

#Funtion for checking and restoring backup
restore_backup() {
    local tar_backup="/opt/your_docker_backup.tar"
    local docker_dir="/opt/docker"

    # Check if the server backup file exists
    if [[ -f "$tar_backup" ]];
      then
        printf "\e[33m\nDocker backup exists. Restoring docker backup to /opt/docker directory\e[0m\n\n"
        mkdir -p "$docker_dir"

        # Copy the directory to /opt/docker
        sudo tar -xzvpf "$tar_backup" -C "$docker_dir"
        printf "\e[33m\nDocker installed and backup restored\e[0m\n\n"
    else
        printf "\e[33m\nDocker backup does not exist. Creating docker directory..\e[0m\n\n"

        # Create the /opt/docker directory if it doesn't exist
        sudo mkdir -p "$docker_dir"
        printf "\e[33m\nInstall completed\e[0m\n\n"
    fi
}



printf "\e[33m\nPreparing for docker installation..\e[0m\n\n"
sudo apt update -y
sudo apt install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo echo  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo sed -i 's|docker.com/linux/debian|docker.com/linux/ubuntu|g' /etc/apt/sources.list
sudo apt update -y

printf "\e[33m\nUpdating system and installing docker, please wait..\e[0m\n\n"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

printf "\e[33m\nChecking for existing backup to restore..\e[0m\n\n"

restore_backup
