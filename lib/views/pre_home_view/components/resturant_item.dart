import 'package:amr_app/models/resturants.dart';
import 'package:flutter/material.dart';

import '../../../src/app_color.dart';
import '../../../src/app_text_style.dart';

class ResturantItem extends StatelessWidget {
  ResturantItem({required this.fun, required this.index}) ;
  //
  // List<Map<String, String>> events = [
  //   {"bgPath": "assets/images/abo_anas.png", "name": "ابو انس"},
  //   {"bgPath": "assets/images/koshary_hind.png", "name": "كشري هند"},
  // ];

  final fun;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.lightBackGroundColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(5, 5),
                    blurRadius: 8,
                    color: Colors.grey.shade300)
              ]),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  child: Image.asset(
                    restaurants[0].img,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    restaurants[0].name,
                    style:
                    AppTextStyle.bodyText().copyWith(fontFamily: "Tajawal"),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
