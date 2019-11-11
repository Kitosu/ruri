echo "Updating..."
apt-get install libmysqlcppconn-dev clang -y
echo "compiling..."
cd ruri
clang++ -std=c++2a lz4.c *cpp BCrypt/*c -D LINUX  -pthread -lmysqlcppconn
cd ..
mv ruri/a.out ./
mv ruri/config.json ./
rm -rf ruri
mv a.out ruri
echo "Done now run ruri and setup config!"