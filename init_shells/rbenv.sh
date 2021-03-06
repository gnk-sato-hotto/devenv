yum -y install gcc-c++ glibc-headers openssl-devel readline libyaml-devel readline-devel zlib zlib-devel libffi-devel libxml2 libxslt libxml2-devel libxslt-devel sqlite-devel

## install rbenv
git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
cp -p /etc/profile /etc/profile.ORG
diff /etc/profile /etc/profile.ORG

echo 'export RBENV_ROOT="/usr/local/rbenv"' >> /etc/profile
echo 'export PATH="${RBENV_ROOT}/bin:${PATH}"' >> /etc/profile
echo 'eval "$(rbenv init -)"' >> /etc/profile
source /etc/profile 

## confirm rbenv version 
rbenv --version 

## install ruby-build
git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build 

## install ruby 2.5.0
rbenv install -v 2.5.0
rbenv rehash
rbenv global 2.5.0

## confirm ruby version
ruby -v

## install rails
gem update --system
gem install nokogiri -- --use-system-libraries
gem install --no-ri --no-rdoc rails
gem install nkrb
rbenv rehash

## confirm rails version
rails -v

chown -R ec2-user:ec2-user /usr/local/rbenv
source /etc/profile
