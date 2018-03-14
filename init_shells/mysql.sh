## !! must execute by root user !!

yum -y install http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm
yum -y install mysql-community-server
chkconfig mysqld on
service mysqld start

## password の変更
# /var/log/mysqld.log を開いて password で検索し, 初期パスワードを確認
# mysql -u root -p で初期パスで login 後, 新しいパスワードを設定
# (8文字以上、英字・数字・記号をそれぞれ1つ以上含む (大文字小文字両方含む))
# 例: hottolinK-123
# ALTER USER root@localhost IDENTIFIED BY '新パスワード';
