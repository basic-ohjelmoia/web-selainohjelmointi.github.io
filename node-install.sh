# Node
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash
nvm install 0.10
echo 'nvm use 0.10' >> ~/.bashrc 

# Npm
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install # ok, fine, this step probably takes more than 30 seconds...
curl https://www.npmjs.org/install.sh | bash
