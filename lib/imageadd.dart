import 'package:flutter/material.dart';

Container imageAdd(String imageName) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("assets/images/$imageName"),
      fit: BoxFit.fill,
    )),
  );
}
