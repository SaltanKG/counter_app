import 'dart:developer';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key ?key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}
//  String tekst = 'Бул текст болот';

class _CounterPageState extends State<CounterPage> {
  String tekst = 'Бул текст болот';
  void teksttiOzgort() {
    setState(() {});
    tekst = 'Текст озгорду';
  }

  @override
  int _count = 0;
  Widget build(BuildContext context) {
    _count++;
    log('Ekran: $_count  jolu kuruldu');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Header',
          style: TextStyle(fontSize: 30.0, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100.0),
            GestureDetector(
              // (){}
              onTap: () {
                teksttiOzgort();
                // setState(() {});
                // tekst = 'Текст озгорду';
                // log('Tekst ozgordu ====> $tekst');
              },
              child: Container(
                color: Colors.blue,
                height: 50.0,
                width: 300.0,
                child: Text(
                  tekst,
                  style: const TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 200.0,
      //   width: double.infinity,
      //   color: Colors.blue,
      //   child: const Text(
      //     'Footer- ayagy',
      //     style: TextStyle(fontSize: 30.0),
      //   ),
      // ),
    );
  }
}