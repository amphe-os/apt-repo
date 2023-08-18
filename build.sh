echo "enter path to deb package to add"
read var
reprepro -b . includedeb stable $var
# Commit & push
git add -A
git commit -m "$(date)"
git push

