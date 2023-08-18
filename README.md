# apt-repo
apt repo for hosting amphe specific packages alongside being a build system for said packages
# How to use
``` curl -s --compressed "https://os.amphe.co.uk/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt-repo.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/repo.list "https://os.amphe.co.uk/repo.list"
```
