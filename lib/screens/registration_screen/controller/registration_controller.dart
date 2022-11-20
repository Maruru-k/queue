import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final TextEditingController _emailEditingController;
  final TextEditingController _firstPasswordEditingController;
  final TextEditingController _secondPasswordEditingController;

  TextEditingController get emailEditingController => _emailEditingController;

  TextEditingController get firstPasswordEditingController =>
      _firstPasswordEditingController;

  TextEditingController get secondPasswordEditingController =>
      _secondPasswordEditingController;

  RegistrationController()
      : _emailEditingController = TextEditingController(),
        _firstPasswordEditingController = TextEditingController(),
        _secondPasswordEditingController = TextEditingController();
}
