#!/bin/bash

eval "export NIMBUS_HOME=/home/ubuntu/Desktop/nimbus"

eval "sudo rm -rf /home/ubuntu/Desktop/nimbus"

aux=$(ps -ef | grep nimbus | awk '{ print $2}')

aux2=$(echo $aux | awk '{ print $1}')

aux3=$(echo $aux | awk '{ print $2}')

aux4=$(ps -ef | grep cumulus | awk '{ print $2}')

eval "kill -9 $aux2 $aux3 $aux4"

eval "rm -rf /tmp/newuser/usercert.pem"

eval "rm -rf /tmp/newuser/userkey.pem"

eval "./install /home/ubuntu/Desktop/nimbus/"

eval "cp -R ec2-api-tools-1.3-57419 /home/ubuntu/Desktop/nimbus/"

# eval "export GLOBUS_LOCATION=/home/ubuntu/Desktop/nimbus/services"

# eval "./scripts/jars-build-and-install.sh"

eval "export PATH=$PATH:/home/ubuntu/Desktop/nimbus/bin"

eval "/home/ubuntu/Desktop/nimbus/bin/nimbusctl start"

eval "cd /home/ubuntu/Desktop/nimbus"

echo "cd /home/ubuntu/Desktop/nimbus"

eval "./bin/nimbus-new-user --dn BACKFILL-SUPERUSER backfill@localhost"

eval "./bin/nimbus-new-user -d /tmp/newuser ismaelcuadradocordero@wireles-guest-16-38-161.uchicago.edu"

eval "curl -O http://www.nimbusproject.org/downloads/nimbus-cloud-client-022.tar.gz"

eval "tar xfz nimbus-cloud-client-022.tar.gz"

eval "cp /tmp/newuser/cloud.properties nimbus-cloud-client-022/conf/"

eval "mkdir ~/.nimbus/"

eval "cp /tmp/newuser/*.pem ~/.nimbus/"

eval "cp ./var/ca/trusted-certs/* nimbus-cloud-client-022/lib/certs/"

eval "cd nimbus-cloud-client-022/"

eval "curl -O http://www.nimbusproject.org/downloads/nimbus-z2c.gz"

eval "gunzip nimbus-z2c.gz"

#eval "../bin/nimbus-nodes -a vmm1 -m 4096"

eval "./bin/cloud-client.sh --transfer --sourcefile nimbus-z2c"

#eval "export EC2_HOME=/home/ubuntu/Desktop/nimbus/ec2-api-tools-1.3-57419"

#eval "export EC2_URL=https://localhost:8444"

#eval "export EC2_CERT=~/.nimbus/usercert.pem"

#eval "export EC2_PRIVATEKEY=~/.nimbus/userkey.pem"

#eval "export MYPUBKEY=`cat ~/.ssh/id_rsa.pub`"

#eval "cp ~/.ssh/id_rsa.pub ./mykey"

aux=$(./bin/nimbus-list-users % | grep "access id" | awk '{ print $4}')

aux2=$(echo $aux | awk '{ print $1}')

eval "euca-create-keypair "mykey||$MYPUBKEY""

# eval "curl -O http://downloads.eucalyptus.com/software/euca2ools/3.1/source/euca2ools-3.1.0.tar.gz"

#eval "cp /home/ubuntu/nimbus/euca2ools-3.1.0.tar.gz /Users/ismaelcuadradocordero/Desktop/nimbus/"

eval "cd /home/ubuntu/Desktop/nimbus/"

#eval "tar xzf euca2ools-3.1.0.tar.gz"

#eval "cd euca2ools-3.1.0"

eval "sudo python setup.py install"

#eval "sudo chown -R ismaelcuadradocordero:staff ../euca2ools-3.1.0"

eval "/home/ubuntu/Desktop/nimbus/bin/nimbus-list-users %"
