import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent),);
  var devTheme = Colors.green;
  var title = "Production Mode";
  runApp(
    MyApp(
      themeColor: devTheme,
      title: title,
    ),
  );
}
