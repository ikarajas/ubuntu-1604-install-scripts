#!/bin/bash

# This will install Elasticsearch 5 with Kibana
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-5.x.list
apt-get update
apt-get install elasticsearch -y
apt-get install kibana -y

/bin/systemctl daemon-reload
/bin/systemctl enable elasticsearch.service
/bin/systemctl enable kibana.service
systemctl start elasticsearch.service
systemctl start kibana.service
