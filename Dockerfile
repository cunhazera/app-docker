FROM openjdk:8-jdk-alpine
COPY app.jar app.jar
EXPOSE 8080
ENV JDBC_URL=jdbc:mysql://demo-mysql:3306/node?useSSL=false \
    DB_USER=demo_user \
    DB_PASS=demo_pass
CMD ["java", "-jar", "app.jar"]
