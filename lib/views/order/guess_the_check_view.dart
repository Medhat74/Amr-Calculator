import 'package:amr_app/core/components/general_button.dart';
import 'package:amr_app/core/utils/naviagtion.dart';
import 'package:amr_app/views/order/components/question_text_form_field.dart';
import 'package:amr_app/views/order/order_view.dart';
import 'package:flutter/material.dart';

import '../../src/app_color.dart';

class GuessTheCheckView extends StatelessWidget {
  GuessTheCheckView({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: AppColors.KPrimaryColor,
        elevation: 1.0,
        title :  Row(
          children: [
            Image.asset('assets/images/amr_face.png',
              height: 80,
              width: 50,
            ),
            const Text("Guess The Check"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(
              height: 50,
            ),
            const Center(child: Text("Quiz")),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  QuestionTextFormField(textController: name, text: 'Name',),
                  QuestionTextFormField(textController: price, text: 'Your guess',),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GeneralButton(text: "Submit",function:  (){
                    AppNavigator.customNavigator(context: context, screen: OrderView(), finish: true);
                  }),

                  GeneralButton(text: 'Add Another Guess', function: (){
                    AppNavigator.customNavigator(context: context, screen: GuessTheCheckView(), finish: true);
                  },),


                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
