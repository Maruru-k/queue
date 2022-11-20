// Package imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int selectedIndex = 0;

  List<DrawerItem> drawerItem = [
    DrawerItem(icon: Icon(Icons.message), label: 'Нужна помошь!'),
    DrawerItem(icon: Icon(Icons.message), label: 'Заявка'),
    DrawerItem(icon: Icon(Icons.message), label: 'Карта'),
    DrawerItem(icon: Icon(Icons.message), label: 'История'),
    DrawerItem(icon: Icon(Icons.message), label: 'Поддержка'),
    DrawerItem(icon: Icon(Icons.settings), label: 'Настройки'),
  ];


}

class DrawerItem {
  Icon icon;
  String label;

  DrawerItem({required this.icon, required this.label});
}
