import 'dart:async';

import 'package:flutter/material.dart';

class WithoutProviderScreen extends StatefulWidget {
  const WithoutProviderScreen({Key? key}) : super(key: key);

  @override
  State<WithoutProviderScreen> createState() => _WithoutProviderScreenState();
}

class _WithoutProviderScreenState extends State<WithoutProviderScreen> {
  int count = 0;
  int no = 0;

  @override
  // ignore: must_call_super
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // by the above init funtion the whole build is rebilding again and again after every sec.
    // to prevent our app from this type of sitvation we use provider state managemnt
    print("build no $count");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Without Provider Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              // this text widget is rebuild when its called
              // in this case it is calling again and again automaticaly bcz of set state funtion
              child: Text(
            "This page is rebuild ${no++} times",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          )),
          const SizedBox(
            height: 60,
          ),
          Center(
              child: Text(
            "${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}:${DateTime.now().second.toString()}",
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
          )),
          Center(
              child: Text(
            count.toString(),
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
          ))
        ],
      ),
    );
  }
}
