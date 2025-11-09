# 🩸 Blood Bank Management System

![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

> A complete **Spring Boot + PostgreSQL + Docker** backend that manages blood donors and their details with clean RESTful APIs and easy containerized deployment.

---

### 🚀 Tech Stack

| Layer            | Technology              |
| ---------------- | ----------------------- |
| Backend          | **Spring Boot (Java)**  |
| Database         | **PostgreSQL (Docker)** |
| Build Tool       | **Maven**               |
| Containerization | **Docker**              |
| Logging          | **SLF4J + Logback**     |

---

### 🧠 Overview

This project helps manage donor details for a blood bank.
It supports basic CRUD operations for donor data — with everything running smoothly inside Docker containers.

---

### 📁 Folder Structure (Simplified)

```
📦 bloodbank-backend
├── 📂 src/main/java/com/example/demo
│   ├── Controller/        → REST API controllers
│   ├── entity/            → JPA entity classes
│   ├── Repository/        → Database repository interfaces
│   ├── exception/         → Custom error handling
│   └── DemoApplication.java
├── 📂 src/main/resources
│   └── application.properties
├── 📄 Dockerfile
├── 📄 docker-compose.yml
├── 📄 pom.xml
└── 📄 README.md
```


Think of it like your **Node.js + Express + Sequelize** setup —
but built with **Spring Boot + JPA + PostgreSQL** 💡

---

### ⚙️ Prerequisites

You’ll need:

* 🐳 **Docker** & **Docker Compose**
* ☕ **JDK 17+**
* 🧰 **Maven**

---

### 🧩 Run the Application (Using Docker Compose)

From the project root directory, run:

```bash
docker-compose up -d
```

This will:
*   Start a **PostgreSQL container**
*   Start your **Spring Boot app container**
*   Automatically link both together

Then access your API at 👉
**[http://localhost:8080](http://localhost:8080)**

---

### 🔑 Postgres Quick Commands

After containers are running, you can enter the **Postgres shell** to view or manage data:

```bash
docker exec -it postgres-bloodbank psql -U postgres -d bloodbank
```

---

### ✨ Conclusion

This project provides a robust and easily deployable solution for blood bank donor management. We hope it serves as a valuable resource or starting point for your needs.

---