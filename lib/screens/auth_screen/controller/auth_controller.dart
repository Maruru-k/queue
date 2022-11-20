import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthScreenController extends GetxController {
  final TextEditingController _emailEditingController;
  final TextEditingController _passwordEditingController;

  TextEditingController get emailEditingController => _emailEditingController;

  TextEditingController get passwordEditingController =>
      _passwordEditingController;

  AuthScreenController()
      : _emailEditingController = TextEditingController(),
        _passwordEditingController = TextEditingController();
}
