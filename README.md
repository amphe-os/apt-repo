# apt-repo
apt repo for hosting amphe specific packages alongside being a build system for said packages
# How to use
```
curl -s --compressed "https://os.amphe.co.uk/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt-repo.gpg >/dev/null
sudo printf '%s\n%s\n' "deb [signed-by=/etc/apt/trusted.gpg.d/apt-repo.gpg] https://os.amphe.co.uk/ stable main" "$(cat /etc/apt/sources.list)" >/etc/apt/sources.list
```
