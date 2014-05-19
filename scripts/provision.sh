#!/usr/bin/env bash

# UK Timezone
ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime

# Update Packages
apt-get update

# Install PHP extensions
apt-get install php5-imagick php5-xsl -y

# sqlite (required for mailcatcher)
apt-get install libsqlite3-dev -y

# Install Ruby
apt-get install python-software-properties -y
apt-add-repository ppa:brightbox/ruby-ng -y
apt-get update
apt-get install ruby2.1 -y
apt-get install ruby2.1-dev -y

# Install Sass
gem2.1 install sass --no-rdoc --no-ri

# Install Mailcatcher
gem2.1 install mailcatcher --no-rdoc --no-ri
