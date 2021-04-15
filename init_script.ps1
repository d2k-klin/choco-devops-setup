########### Install choko
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco upgrade chocolatey -y
choco install chocolatey-core.extension -y
######### base
choco install notepadplusplus googlechrome firefox atom 7zip keepass -y
choco install vscode -y
choco install vscode-kubernetes-tools vscode-python vscode-java vscode-powershell vscode-yaml -y
choco install cmder -y
choco install wsl2 --version=1.0.0 -y
choco install git -y
choco install tortoisegit -y
choco install putty -y
choco install curl -y
choco install jdk11 -y
choco install nodejs-lts -y
choco install make -y
choco install python -y
choco install pip -y

# AWS + terraform
choco install awscli -y
choco install awstools.powershell -y
choco install terraform -y
choco install terragrunt -y

#Docker + k8s
choco install docker-desktop -y
choco install kubernetes-cli -y
choco install kubernetes-helm -y
choco install kubectx -y
choco install lens -y
choco install kubens -y
choco install minikube -y

#windows tools
choco install screenpresso -y
choco install adobereader -y
choco install irfanview -y
choco install microsoft-teams -y
choco install slack -y
choco install zoom -y
choco install spotify -y

# sysadmin
choco install openvpn -y
choco install openssh -y
choco install filezilla -y
choco install putty -y
choco install winscp -y
choco install cygwin -y

####pip pckages
#https://awsu.me/general/overview.html
pip install awsume

#https://www.checkov.io/1.Welcome/What%20is%20Checkov.html
pip install checkov

#https://cloudsplaining.readthedocs.io/en/latest/
pip3 install --user cloudsplaining

####add github key
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

######Generate ssh
ssh-keygen -t rsa -C "mail.com"
cat ~/.ssh/id_rsa.pub

##########allow long names
git config --system core.longpaths true