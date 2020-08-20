import 'package:flutter/material.dart';
import '../constants.dart';

Container searchBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    padding: EdgeInsets.symmetric(vertical: kpadding / 4, horizontal: kpadding),
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white12,
    ),
    child: TextField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        hintText: 'Search',
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        fillColor: Colors.brown,
      ),
    ),
  );
}
