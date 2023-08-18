# Packages & Packages.gz
dpkg-scanpackages --arch amd64 pool/ > dists/stable/main/binary-amd64/Packages
cat dists/stable/main/binary-amd64/Packages | gzip -9 > dists/stable/main/binary-amd64/Packages.gz

# Release, Release.gpg & InRelease
apt-ftparchive dists/stable/main/binary-amd64/release . > dists/stable/release
gpg --default-key "jack@amphe.co.uk" -abs -o - dists/stable/Release > dists/stable/Release.gpg
gpg --default-key "jack@amphe.co.uk" --clearsign -o - dists/stable/Release > dists/stable/InRelease

# Commit & push
git add -A
git commit -m "$(date)"
git push
