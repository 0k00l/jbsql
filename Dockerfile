FROM jboss/wildfly
MAINTAINER Sebastian Krupa <s3b0@mail.com>
#RUN mkdir /opt/jboss/jrebel
#RUN mkdir /opt/jboss/jrebel/lib
#COPY jrebel.jar /opt/jboss/jrebel
#COPY libjrebel64.so /opt/jboss/jrebel/lib
#ENV REBEL_HOME=/opt/jboss/jrebel
#ENV JAVA_OPTS="-server -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=256m -Djava.net.preferIPv4Stack=true -Djboss.modules.system.pkgs=org.jboss.byteman -Djava.awt.headless=true --add-exports=java.base/sun.nio.ch=ALL-UNNAMED --add-exports=jdk.unsupported/sun.misc=ALL-UNNAMED --add-exports=jdk.unsupported/sun.reflect=ALL-UNNAMED --add-modules=java.se -agentpath:$REBEL_HOME/lib/libjrebel64.so -Drebel.remoting_plugin=true -Xshare:off -Xms256m -Xmx512m"
EXPOSE 9990
RUN /opt/jboss/wildfly/bin/add-user.sh admin password_1 --silent
#RUN curl -L https://github.com/javaee-samples/javaee7-hol/blob/jrebel/solution/movieplex7-1.0-SNAPSHOT.war?raw=true -o /opt/jboss/wildfly/standalone/deployments/movieplex7-1.0-SNAPSHOT.war
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
