import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const CustomButton({this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0XFF005EA6),
            borderRadius: BorderRadius.circular(10.0)),
        width: 69.0,
        height: 44.0,
        child:  Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
