import 'package:flutter/material.dart';
import 'package:tapshyrma_1/pages/second_page.dart';
import 'package:tapshyrma_1/widgets/custom_button.dart';

import '../widgets/main_button_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _number = 0;
  void _increment() {
    _number++;
    setState(() {});
  }

  void _decrement() {
    _number--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainButtonWidget(
            number: _number,
            color: const Color(0xffBDBDBD),
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
                onPressed: () => _decrement(),
              ),
              const SizedBox(width: 30.0),
              CustomButton(
                icon: Icons.add,
                onPressed: () => _increment(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
