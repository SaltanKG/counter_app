import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const EkinchiBet({Key? key, kelgenSan, required this.KelgenSan})
      : super(key: key);
  // ignore: non_constant_identifier_names
  final String KelgenSan;

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
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            color: Color(0xffBDBDBD),
          ),
          width: 294.0,
          height: 48.0,
          child: Text(
            'Сан: $KelgenSan',
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
