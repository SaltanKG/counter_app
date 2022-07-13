import 'package:flutter/material.dart';

import '../pages/second_page.dart';

class MainButtonWidget extends StatelessWidget {
  final Color color;
   final int number;
   final VoidCallback onPressed;
  const MainButtonWidget({
    this.color,
    this.number,
    this.onPressed,
    
  });

 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      
      child: Container(
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          color: color,
          
        ),
        width: 294.0,
        height: 48.0,
        child: Text(
          'Сан: $number',
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}