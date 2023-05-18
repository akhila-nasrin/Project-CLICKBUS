import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:e_bus/loginpage.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  void initState()
  {
    super.initState();
    startTime();

  }


  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Lottie.network(
          'https://assets5.lottiefiles.com/packages/lf20_nxzfykro.json'),
    ));
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration,route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }

}
