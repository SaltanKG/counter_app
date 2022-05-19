import 'package:flutter/material.dart';

import 'ekinchi_bet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _san = 0;
  void _koboituu() {
    _san++;
    setState(() {});
  }

  void _azaituu() {
    _san--;
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EkinchiBet(
                    KelgenSan: _san.toString(),
                    // KelgenSan: '',
                  ),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                color: Color(0xffBDBDBD),
              ),
              width: 294.0,
              height: 48.0,
              child: Text(
                'Сан: $_san',
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // uzun jolu
                  // _san = _san - 1;
                  // _san--;
                  // setState(() {});
                  // log('San: $_san');
                  _azaituu();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFF005EA6),
                      borderRadius: BorderRadius.circular(10.0)),
                  width: 69.0,
                  height: 44.0,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // uzun jolu
                  // _san = _san + 1;
                  // _san++;
                  // setState(() {});
                  // log('San: $_san');
                  _koboituu();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFF005EA6),
                      borderRadius: BorderRadius.circular(10.0)),
                  width: 69.0,
                  height: 44.0,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              // SizedBox(
              //   width: 25.0,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
