# Packages & Packages.gz
dpkg-scanpackages --arch amd64 pool/ > dists/stable/main/binary-amd64/Packages
cat dists/stable/main/binary-amd64/Packages | gzip -9 > dists/stable/main/binary-amd64/Packages.gz

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "jack@amphe.co.uk" -abs -o - Release > Release.gpg
gpg --default-key "jack@amphe.co.uk" --clearsign -o - Release > InRelease

# Commit & push
git add -A
git commit -m "$(date)"
git push
