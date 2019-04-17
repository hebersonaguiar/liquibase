# Liquibase

Liquibase is a source control for databases.

## Execution

Use this command to execute liquibase.

```plain text
liquibase --driver=com.mysql.jdbc.Driver --classpath=/opt/liquib/driver/mysql-connector-java-5.1.47.jar \
--changeLogFile=/opt/liquib/databaseChangeLog.xml --url="jdbc:mysql://mysql/app?useSSL=false" \
--username=root --password=my-secret-pw update
```