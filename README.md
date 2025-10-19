# 🚀 Todo List API com Spring Boot

## 🎯 Sobre o Projeto

Este projeto é uma **API RESTful** simples e eficiente para gerenciamento de tarefas (`Todo List`). Foi desenvolvido com **Java** e **Spring Boot**, garantindo que cada usuário possa gerenciar suas próprias tarefas.

Este é o projeto final do módulo de **Java com Spring Boot - Curso Introdutório** da **Rocketseat**.

## ✨ Funcionalidades

| Rota | Método | Descrição |
| :--- | :--- | :--- |
| `/users/` | `POST` | Cria um novo usuário (Cadastro). |
| `/tasks/` | `POST` | Cria uma nova tarefa para o usuário. |
| `/tasks/` | `GET` | Lista todas as tarefas do usuário. |
| `/tasks/{id}` | `PUT` | Atualiza uma tarefa existente pelo ID. |

## 🛠️ Tecnologias Utilizadas

* **Java 17+**
* **Spring Boot** (Framework principal)
* **BCrypt** (Para criptografia segura de senhas)
* **Spring Data JPA** (Para persistência de dados)
* **H2 Database** (Opcional - Para testes ou desenvolvimento rápido)

## ⚙️ Como Rodar a Aplicação

### Pré-requisitos

Você precisará ter instalado:

* [Java Development Kit (JDK) 17+](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
* [Maven](https://maven.apache.org/download.cgi) (Gerenciador de Dependências)

### Configuração

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/orodrigojose/rocketseat-spring
    cd rocketseat-spring
    ```

2.  **Configurar o `application.properties`:**
    No arquivo `src/main/resources/application.properties`, configure sua conexão com o banco de dados (ex: PostgreSQL) e defina sua **chave secreta JWT**.

    ```properties
    # Configuração do Banco de Dados (Exemplo: PostgreSQL)
    spring.datasource.url=jdbc:postgresql://localhost:5432/todolistdb
    spring.datasource.username=seu_usuario
    spring.datasource.password=sua_senha
    spring.jpa.hibernate.ddl-auto=update
    ```

3.  **Executar a Aplicação:**
    ```bash
    # Pelo Maven
    ./mvnw spring-boot:run
    ```
    A API estará rodando em `http://localhost:8080`.
---
Feito com ❤️ por **orodrigojose** como resultado do curso **Rocketseat**.