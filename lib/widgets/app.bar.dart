import 'package:flutter/material.dart';

Widget myAppBar(String title) {
  return AppBar(
    backgroundColor: const Color.fromRGBO(156, 204, 101, 1),
    //background color of Appbar to green
    title: Text(title),
  );
}
