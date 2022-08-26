import 'package:amr_app/models/resturants.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/naviagtion.dart';
import '../../../src/app_color.dart';
import '../../../src/app_text_style.dart';
import '../../home_view.dart';

class NewRestaurantsItem extends StatelessWidget {
  final Restaurant restaurant;

  NewRestaurantsItem({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              child: Image.asset(
                restaurant.img,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                restaurant.name,
                style:
                    AppTextStyle.bodyText().copyWith(fontFamily: "Tajawal"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
