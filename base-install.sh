# Base install for ubuntu 14.04

apt-get update

echo 'deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main' > /etc/apt/sources.list.d/passenger.list
echo 'deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main' > /etc/apt/sources.list.d/ruby.list
echo 'deb-src http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main' > /etc/apt/sources.list.d/ruby-src.list


apt-get update

sudo apt-get install -y apache2
sudo apt-get install -y ruby2.3 ruby2.3-dev 
sudo apt-get install -y python3 python-pip 
sudo apt-get -y install build-essential patch

# nokogiri packs for rails
sudo apt-get -y ruby-dev zlib1g-dev liblzma-dev

# GEMS
echo 'gem: --no-document' > ~/.gemrc
source ~/.gemrc

gem install rails
gem install sinatra
