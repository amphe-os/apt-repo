# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "jack@amphe.co.uk" -abs -o - Release > Release.gpg
gpg --default-key "jack@amphe.co.uk" --clearsign -o - Release > InRelease

# Commit & push
git add -A
git commit -m "$(date)"
git push
