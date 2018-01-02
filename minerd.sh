sudo apt install libcurl4-openssl-dev git automake

git clone https://github.com/bitzeny/cpuminer.git
cd cpuminer
./autogen.sh
./configure CGLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer"
make

./minerd -a yescrypt \
-o stratum+tcp://daddy-pool.work:15021 \
-u ZgBrc7ADziDrxMftL15Ud1nEd3qFiDsz99
