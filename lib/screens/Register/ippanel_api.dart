import 'package:flutter/material.dart';

// GetAuthorizedUser
class GetAuthorizedUser {
  final String status;
  final int code;
  final String message;
  final Object data;

  GetAuthorizedUser(
    this.status,
    this.code,
    this.message,
    this.data,
  );
}
