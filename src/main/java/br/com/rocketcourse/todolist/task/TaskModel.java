package br.com.rocketcourse.todolist.task;

import java.time.LocalDateTime;
import java.util.UUID;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity(name = "tb_tasks")
public class TaskModel {
  @Id
  @GeneratedValue(generator = "UUID")
  private UUID id;
  private String description;

  @Column(length = 50) // 255 varchar for default limits
  private String title;
  private String priority;
  private LocalDateTime startAt;
  private LocalDateTime endAt;

  private UUID idUser;

  @CreationTimestamp
  private LocalDateTime createdAt;


  public void setTitle(String title) throws Exception {
    if (title.length() > 50) {
      throw new Exception("O Título ultrapassou o limite de 50 caracteres!");
    }
    this.title = title;
  }
}
