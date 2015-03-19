#!/bin/sh
sudo apt-get install -y python-software-properties 
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo add-apt-repository ppa:fcwu-tw/ppa
sudo apt-get -y update
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev vim vim-gnome
cd
git clone http://github.com/gindyo/settings
cp settings/.bashrc .
sudo rm /home/dimitar/.rbenv
git clone git://github.com/sstephenson/rbenv.git /home/dimitar/.rbenv
echo 'export PATH="/home/dimitar/.rbenv/bin:$PATH"' >> /home/dimitar/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone git://github.com/sstephenson/ruby-build.git /home/dimitar/.rbenv/plugins/ruby-build
echo 'export PATH="/home/dimitar/.rbenv/plugins/ruby-build/bin:$PATH"' >> /home/dimitar/.bashrc

git clone https://github.com/sstephenson/rbenv-gem-rehash.git /home/dimitar/.rbenv/plugins/rbenv-gem-rehash

/home/dimitar/.rbenv/bin/rbenv install 2.2.1
/home/dimitar/.rbenv/bin/rbenv global 2.2.1
ruby -v
echo "gem: --no-ri --no-rdoc" > /home/dimitar/.gemrc
gem install bundler

git config --global color.ui true
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR@EMAIL.com"
echo ####################### SSH key ###########################
cat /home/dimitar/.ssh/id_rsa.pub

echo ###########################################################
echo "paste it here https://github.com/settings/ssh"
echo ###########################################################
sudo apt-get -y install nodejs
gem install rails -v 4.2.0
rbenv rehash
sudo apt-get remove -y --purge  postgresql*
sudo apt-get install -y postgresql-common
sudo apt-get install -y postgresql-9.4 libpq-dev
gem install hub
gem install bundler
cd /home/dimitar/ 
git clone http://github.com/gindyo/.vim
cp .vim/.vimrc .

