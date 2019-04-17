FROM java:8

# UPDATE OS
RUN apt-get update -y

# ADD LIQUIBASE
RUN mkdir /opt/liquibase
ADD liquibase-3.6.2-bin.tar.gz /opt/liquibase

# COPY JAR MODULES
COPY *.jar /usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/lib/
COPY *.jar /usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/lib/ext/

# COPY CHANGELOG
RUN mkdir /opt/changelog
COPY changelog.sql /opt/changelog/changelog.sql

# COPY DRIVER MYSQL
RUN mkdir /opt/driver
COPY mysql-connector-java-5.1.47.jar /opt/driver/mysql-connector-java-5.1.47.jar

# RUN CHANGELOG
CMD java -jar /opt/liquibase/liquibase.jar --driver=com.mysql.jdbc.Driver --classpath=/opt/driver/mysql-connector-java-5.1.47.jar --changeLogFile=/opt/changelog/changelog.sql --url="jdbc:mysql://mysql/app?useSSL=false" --username=root --password=my-secret-pw update
