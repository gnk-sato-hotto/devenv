
# Amazon Linux
yum install -y gcc gcc-c++ make git openssl-devel bzip2-devel zlib-devel readline-devel sqlite-devel

git clone https://github.com/yyuu/pyenv.git /usr/local/pyenv
echo 'export PYENV_ROOT="/usr/local/pyenv"' >> /etc/profile
echo 'if [ -d "${PYENV_ROOT}" ]; then' >> /etc/profile
echo 'export PATH=${PYENV_ROOT}/bin:$PATH' >> /etc/profile
echo 'eval "$(pyenv init -)"' >> /etc/profile
echo 'fi' >> /etc/profile
source /etc/profile 

pyenv install 3.6.4
pyenv global 3.6.4

python --version
pip --version

pyenv rehash

chown -R ec2-user:ec2-user /usr/local/pyenv
source /etc/profile
