import 'package:flutter/material.dart';

import '../../src/app_color.dart';

class TextType extends StatelessWidget {
  final String text;


  TextType(this.text);

  @override
  Widget build(BuildContext context) {
    return  Text(
      "$text",
      style: TextStyle(
        color: AppColors.KPrimaryColor,
        fontSize: 20,
      ),
    );

  }
}
