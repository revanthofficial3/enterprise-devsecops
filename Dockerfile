ubuntu@devsecops-server:~/enterprise-devsecops$ pwd
ls -la
cat Dockerfile
/home/ubuntu/enterprise-devsecops
total 28
drwxrwxr-x  4 ubuntu ubuntu 4096 Aug 12 21:53 .
drwxr-x--- 10 ubuntu ubuntu 4096 Aug 13 10:58 ..
drwxrwxr-x  8 ubuntu ubuntu 4096 Aug 13 10:58 .git
-rw-rw-r--  1 ubuntu ubuntu   50 Aug 12 21:51 .gitignore
-rw-rw-r--  1 ubuntu ubuntu  387 Aug 12 21:53 Dockerfile
drwxrwxr-x  3 ubuntu ubuntu 4096 Aug 12 21:51 app
-rw-rw-r--  1 ubuntu ubuntu 1718 Aug 12 21:51 pom.xml
FROM tomcat:10.1-jdk21

LABEL maintainer="Revanth"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/enterprise-devsecops.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

LABEL maintainer="Revanth"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/enterprise-devsecops.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
ubuntu@devsecops-server:~/enterprise-devsecops$ 
