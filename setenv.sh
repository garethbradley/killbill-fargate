export JAVA_HOME=${JAVA_HOME-"/usr/lib/jvm/default-java"}

# JVM Options
CATALINA_OPTS="-server
               -showversion
               -XX:+PrintCommandLineFlags
               -XX:+UseCodeCacheFlushing
               -Xms512m
               -Xmx1024m
               -XX:+CMSClassUnloadingEnabled
               -XX:-OmitStackTraceInFastThrow
               -XX:+UseParNewGC
               -XX:+UseConcMarkSweepGC
               -XX:+CMSConcurrentMTEnabled
               -XX:+ScavengeBeforeFullGC
               -XX:+CMSScavengeBeforeRemark
               -XX:+CMSParallelRemarkEnabled
               -XX:+UseCMSInitiatingOccupancyOnly
               -XX:CMSInitiatingOccupancyFraction=50
               -XX:NewSize=100m
               -XX:MaxNewSize=256m
               -XX:SurvivorRatio=10
               -XX:+DisableExplicitGC"

# Java Properties
export CATALINA_OPTS="$CATALINA_OPTS
                      -Dkaui.url=http://127.0.0.1:8081
                      -Dkaui.db.url=$KAUI_CONFIG_DAO_URL
                      -Dkaui.db.password=$KAUI_CONFIG_DAO_PASSWORD
                      -Dkaui.db.username=$KAUI_CONFIG_DAO_USER
                      -Dkaui.root_username=$KAUI_ROOT_USERNAME
                      -Dkaui.root_username=$KAUI_ROOT_USERNAME
                      -Dlogback.configurationFile=/var/lib/killbill/logback.xml
                      -Dorg.killbill.server.properties=file:///var/lib/killbill/killbill.properties
                      -Dcom.sun.xml.bind.v2.bytecode.ClassTailor.noOptimize=true
                      -Djava.rmi.server.hostname=$ENV_HOST_IP
                      -Djava.security.egd=file:/dev/./urandom
                      -Djruby.compile.invokedynamic=false
                      -Dlog4jdbc.sqltiming.error.threshold=1000"