# 1. 基础镜像使用 Java 8
FROM openjdk:8-jdk

# 2. 维护者信息（可选）
LABEL maintainer="yourname"

# 3. 在容器内创建 /app 目录，并作为工作目录
WORKDIR /app

# 4. 将 Maven 打包好的 jar 包复制到容器的 /app 目录下，并重命名为 app.jar
# 注意：如果你的 pom.xml 里指定了最终的 jar 包名，这里可以写全名，例如：
# COPY target/my-springboot-app.jar app.jar
COPY target/*.jar app.jar

# 5. 暴露 Spring Boot 默认的 8080 端口
EXPOSE 8080

# 6. 容器启动时执行的命令
ENTRYPOINT ["java", "-jar", "app.jar"]
