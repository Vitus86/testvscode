FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk tomcat9 maven git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd ./boxfuse-sample-java-war-hello
#RUN mvn package
#RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD [ "catalina.sh", "run" ]