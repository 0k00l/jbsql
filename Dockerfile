FROM jboss/wildfly
MAINTAINER Sebastian Krupa <s3b0@mail.com>
RUN /opt/jboss/wildfly/bin/add-user.sh admin password_1 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
