import 'package:flutter/material.dart';
import 'package:tapshyrma_1/constants/colors/app_colors.dart';
import 'package:tapshyrma_1/widgets/main_app_bar_widget.dart';
import 'package:tapshyrma_1/widgets/main_button_widget.dart';

import '../constants/texts/app_texts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.sendNumber}) : super(key: key);

  final int sendNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar:   MainAppBarWidget(
        appBarText:AppTexts.homeWork2 ,
       
      ),
      body: Center(
          child: MainButtonWidget(
        color: AppColors.blue,
        number: sendNumber,
        onPressed: () => Navigator.pop(context),
      )),
    );
  }
}
