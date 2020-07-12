import 'package:flutter/material.dart';

const kInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    ),
    filled: true,
    fillColor: Colors.white,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        )),
    focusedBorder:
    OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),


);
const kDesign = BoxDecoration(
  borderRadius:  BorderRadius.all(
      Radius.circular(10),
  ),
  );

