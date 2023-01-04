// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String getImageBasedOnDate(DateTime currentDate) {
  switch (currentDate.day) {
    case DateTime.monday:
      return "assets/images/monday_menu_night.jpg";
    case DateTime.tuesday:
      return "assets/images/tuesday_menu_night.jpg";
    case DateTime.wednesday:
      return "assets/images/wednesday_menu_night.jpg";
    case DateTime.thursday:
      return "assets/images/thursday_menu_night.jpg";
    case DateTime.friday:
      return "assets/images/friday_menu_night.jpg";
    case DateTime.saturday:
      return "assets/images/tuesday_menu_night.jpg";
    case DateTime.sunday:
      return "assets/images/tuesday_menu_night.jpg";
    default:
      return "assets/images/monday_menu.png";
  }
}
