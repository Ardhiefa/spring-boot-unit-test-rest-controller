# Menggunakan OpenJDK 17 sebagai base image
FROM openjdk:24-jdk-slim

# Menambahkan argument untuk nama file JAR
ARG JAR_FILE=target/*.jar

# Menyalin file JAR aplikasi ke dalam container
COPY ${JAR_FILE} app.jar

# Menentukan port yang akan diekspos oleh container
EXPOSE 8080

# Menjalankan aplikasi Spring Boot saat container dimulai
ENTRYPOINT ["java","-jar","/app.jar"]