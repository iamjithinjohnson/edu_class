import 'package:edu_class/04_utils/app_colors.dart';
import 'package:flutter/material.dart';

BoxDecoration borderCurve() {
  return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      color: cWhite,
      border: Border.all(color: cStrokeBorder));
}
