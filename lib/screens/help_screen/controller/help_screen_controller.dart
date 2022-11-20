import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpScreenController extends GetxController {
  final TextEditingController _arealController;
  final TextEditingController _descriptionController;
  final TextEditingController _commentController;
  final TextEditingController _contactController;

  TextEditingController get arealController => _arealController;

  TextEditingController get descriptionController => _descriptionController;

  TextEditingController get commentController => _commentController;

  TextEditingController get contactController => _contactController;

  HelpScreenController()
      : _arealController = TextEditingController(),
        _descriptionController = TextEditingController(),
        _commentController = TextEditingController(),
        _contactController = TextEditingController();
}
