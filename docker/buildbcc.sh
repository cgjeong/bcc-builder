cd /root/ && git clone https://github.com/iovisor/bcc.git
mkdir bcc/build; cd bcc/build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr/local/bcc
make && make install
cd $1 && cp -a /usr/local/bcc ./
chown -R $2:$3 ./bcc
