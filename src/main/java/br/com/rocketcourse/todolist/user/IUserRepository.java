package br.com.rocketcourse.todolist.user;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

public interface IUserRepository extends JpaRepository<UserModel, UUID>{
  // Automaticamente faz um select pela columna
  UserModel findByUsername(String username); 
}
