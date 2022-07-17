import 'package:flutter/material.dart';
import 'package:tapshyrma_1/constants/colors/app_colors.dart';
import 'package:tapshyrma_1/pages/second_page.dart';
import 'package:tapshyrma_1/widgets/custom_button.dart';

import '../constants/texts/app_texts.dart';
import '../widgets/main_app_bar_widget.dart';
import '../widgets/main_button_widget.dart';

// class FirstPage extends StatefulWidget {
//   const FirstPage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<FirstPage> createState() => _FirstPageState();
// }

// class _FirstPageState extends State<FirstPage> {
//   int _number = 0;
 class FirstPage extends StatefulWidget {
  const FirstPage({Key ?key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _number = 5;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  MainAppBarWidget(
        appBarText: AppTexts.homeWork1 ,
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainButtonWidget(
            number: _number,
            color:AppColors.main,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(
                  sendNumber: _number,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                icon: Icons.remove,
                onPressed: () => buttonChange(false),
              ),
              const SizedBox(width: 30.0),
              CustomButton(
                icon: Icons.add,
                onPressed: () => buttonChange(true),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void buttonChange(bool isAdd) {
    if (isAdd == true) {
      setState(() {
        _number++;
      });
    } else {
      setState(() {
        _number--;
      });
    }
  }
}
