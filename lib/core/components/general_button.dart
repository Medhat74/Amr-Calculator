import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../src/app_color.dart';

class GeneralButton extends StatelessWidget {
  final String text;
  final function;

  GeneralButton({required this.text,required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child:Text (text,),
      style: ElevatedButton.styleFrom(
        primary: AppColors.KPrimaryColor, // Background color
      ),
    );
  }
}
