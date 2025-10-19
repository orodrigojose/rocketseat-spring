# Stage 1: Build (Compilação)
# Usar uma imagem que já contenha o Java 17 e o Maven
FROM maven:3.9.5-jdk-17 AS build 

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar o pom.xml e as dependências para aproveitar o cache do Docker
# Isso evita recompilar tudo se apenas o código mudar
COPY pom.xml .

# Baixar as dependências. O 'find' é para que a execução não falhe
# se não houver um src/main/java ainda.
RUN mvn dependency:go-offline || true 

# Copiar o restante do código
COPY src ./src

# Executar o build
RUN mvn clean package -DskipTests

# ------------------------------------------------------------------------

# Stage 2: Runtime (Execução)
# Usar uma imagem Java 17 leve para o ambiente de produção
FROM openjdk:17-jdk-slim

# Definir o diretório de trabalho
WORKDIR /app

# Expor a porta que a aplicação Spring está usando (padrão é 8080)
EXPOSE 8080

# Copiar o arquivo JAR do stage de build para o stage de runtime
# O nome do JAR geralmente é gerado como <artifact-id>-<version>.jar. 
# Substitua 'todolist-0.0.1-SNAPSHOT.jar' pelo nome correto do seu JAR final
COPY --from=build /app/target/*.jar app.jar

# Comando para iniciar a aplicação
ENTRYPOINT [ "java", "-jar", "app.jar" ]