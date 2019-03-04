FROM jboss/wildfly
MAINTAINER Sebastian Krupa <s3b0@mail.com>
EXPOSE 9990
RUN /opt/jboss/wildfly/bin/add-user.sh admin password_1 --silent
#RUN curl -L https://github.com/javaee-samples/javaee7-hol/blob/jrebel/solution/movieplex7-1.0-SNAPSHOT.war?raw=true -o /opt/jboss/wildfly/standalone/deployments/movieplex7-1.0-SNAPSHOT.war
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
