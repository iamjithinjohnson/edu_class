import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void successToast(String? message) {
  Fluttertoast.showToast(
      msg: message ?? '',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      // backgroundColor: AppTheme.themeData.primaryColor,
      // textColor: Colors.white,
      fontSize: 16.0);
}

void failureToast(String? message) {
  Fluttertoast.showToast(
      msg: message ?? '',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.red, //AppTheme.themeData.primaryColor,
      textColor: Colors.white,
      fontSize: 16.0);
}
