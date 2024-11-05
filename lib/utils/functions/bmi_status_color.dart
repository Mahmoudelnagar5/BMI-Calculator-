import 'package:flutter/material.dart';

Color bmiStatusColor(double bmiScore) {
  if (bmiScore < 18.5) {
    return const Color(0xff246AFE).withOpacity(.9);
  } else if (bmiScore < 25) {
    return const Color.fromARGB(255, 0, 177, 92);
  } else if (bmiScore < 30) {
    return const Color.fromARGB(255, 255, 201, 1);
  } else {
    return const Color.fromARGB(255, 239, 59, 50);
  }
}
