echo "Updating..."
apt-get install libmysqlcppconn-dev clang -y
echo "compiling..."
cd ruri
clang++ -std=c++2a lz4.c *cpp BCrypt/*c -D LINUX  -pthread -lmysqlcppconn -o ruri

echo "Done now run ruri and setup config!"