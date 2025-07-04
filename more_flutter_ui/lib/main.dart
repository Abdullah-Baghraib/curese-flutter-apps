import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}

  // Lesson #6 Overflow softWrap SelectableText
  //Lesson #7, 8 Image Slider (Carousel)
  //Lesson #9 Radio Button
  //Lesson #10 RadioListTile
  //Lesson #11 Checkbox
  //Lesson #12 Switch (ThemeMode)
  //Lesson #13 DropdownButton (Combo Box)
  //Lesson #14 ExpansionTile
  //Lesson #15 Marquee
  //Lesson #17 ColorPicker
  //Lesson #18 Manual PercentIndicator
  //Lesson #19 PercentIndicator
  //Lesson #20 ListWheelScrollView
  //Lesson #21 InteractiveViewer
