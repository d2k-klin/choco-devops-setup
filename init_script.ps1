########### Install choko
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco upgrade chocolatey -y
choco install chocolatey-core.extension -y
######### Install choco packages
choco install notepadplusplus googlechrome atom 7zip keepass -y
choco install vscode -y
choco install wsl2 -y
choco install git.install -y
choco install putty.install -y
choco install awscli -y
choco install terraform -y
choco install terragrunt -y
choco install docker-desktop -y
choco install kubernetes-cli -y
#choco install minikube -y
choco install screenpresso -y
choco install adobereader -y
choco install firefox -y
###optional
choco install curl -y
choco install jdk11 -y
choco install awstools.powershell -y
choco install openvpn -y
choco install openssh -y
choco install python -y
choco install filezilla -y
choco install putty -y
choco install winscp -y
choco install irfanview -y
choco install microsoft-teams -y
choco install slack -y
choco install tortoisegit -y


####add github key
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

######Generate ssh
ssh-keygen -t rsa -C "mail.com"
cat ~/.ssh/id_rsa.pub

##########allow long names
git config --system core.longpaths true
