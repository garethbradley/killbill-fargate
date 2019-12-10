#!/bin/bash

export KILLBILL_DAO_USER=${KILLBILL_DAO_USER:-killbill}
export KILLBILL_DAO_PASSWORD=${KILLBILL_DAO_PASSWORD:-killbill}
export KILLBILL_DAO_URL=${KILLBILL_DAO_URL:-jdbc:h2:mem:killbill}

envsubst < $KILLBILL_INSTALL_DIR/killbill.properties.template > $KILLBILL_INSTALL_DIR/killbill.properties

creds="$KAUI_ROOT_USERNAME = $KAUI_ROOT_PASSWORD, root"
sed -i "2s/.*/$creds/" $KILLBILL_SECURITY_SHIRO_RESOURCE_PATH

exec /usr/share/tomcat/bin/catalina.sh run