
import 'package:flutter/material.dart';
import 'package:password_manager/src/dto/dto.dart';


class PasswordDTO extends DTO {
  late String username; 
  late String password; 
  late dynamic icon = const Icon(Icons.not_accessible); 
  late int createdBy;
  late DateTime createdAt;
  late DateTime updatedAt;
  late int? containerId;
  late int? categoryId;

  PasswordDTO(
    this.username,
    this.password,
    this.icon,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.containerId,
    this.categoryId
  );
}
