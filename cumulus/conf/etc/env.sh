#!/bin/sh

pypath="/Users/ismaelcuadradocordero/Desktop/nimbus/ve/lib:/Users/ismaelcuadradocordero/Desktop/nimbus/ve/lib/python2.7/site-packages/"
if [ "X${PYTHONPATH}" == "X" ]; then
    PYTHONPATH=$pypath
else
    PYTHONPATH=$pypath:${PYTHONPATH}
fi
export PYTHONPATH

CUMULUS_VE_HOME=/Users/ismaelcuadradocordero/Desktop/nimbus/ve
export CUMULUS_VE_HOME

CUMULUS_HOME=/Users/ismaelcuadradocordero/Desktop/nimbus/cumulus
export CUMULUS_HOME

CUMULUS_AUTHZ_DDL=/Users/ismaelcuadradocordero/Desktop/nimbus/cumulus/etc/acl.sql
export CUMULUS_AUTHZ_DDL

NIMBUS_AUTHZ_DB=/Users/ismaelcuadradocordero/Desktop/nimbus/cumulus/etc/authz.db
export NIMBUS_AUTHZ_DB

export PATH=$CUMULUS_HOME/bin:$PATH
