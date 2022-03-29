import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(stf_try());
}

class stf_try extends StatefulWidget {
  const stf_try({Key? key}) : super(key: key);

  @override
  State<stf_try> createState() => _stf_tryState();
}

class _stf_tryState extends State<stf_try> {
  int strtImage = 0;
  void imgchange() {
    setState(() {
      strtImage = Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image${strtImage}.jpg"),
                    ElevatedButton(
                        onPressed: imgchange, child: Text("Image Changer"))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
