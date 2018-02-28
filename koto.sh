sudo apt-get install build-essential libcurl4-openssl-dev autotools-dev automake

git clone https://github.com/koto-dev/cpuminer-yescrypt
cd cpuminer-yescrypt
./autogen.sh
./configure CGLAGS="-O3"
make

./minerd -a yescrypt -o stratum+tcp://okoto.xyz:51000 -u k1JYQWqp8rX8TmvsPMSxjyj7nFJE7s7o7MR
