import 'package:flutter/material.dart';
import 'package:tapshyrma_1/widgets/main_button_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, sendNumber, required this.sendNumber})
      : super(key: key);

  final int sendNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          ' Тапшырма 02',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: MainButtonWidget(color: Colors.blue, number: sendNumber,
        onPressed: ()=>Navigator.pop(context),
      )),
      
    );
  }
}
