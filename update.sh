cd .
rm ruri
rm ruri.sln
rm README.md
rm LICENSE
mv config.json config.json1
git pull
chmod +x build.sh
./build.sh