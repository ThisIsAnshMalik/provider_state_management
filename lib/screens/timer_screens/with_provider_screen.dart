import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider.dart';

class WithProviderScreen extends StatefulWidget {
  const WithProviderScreen({Key? key}) : super(key: key);

  @override
  State<WithProviderScreen> createState() => _WithProviderScreenState();
}

class _WithProviderScreenState extends State<WithProviderScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }

  int no = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("With Provider Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "This page is rebuild ${no++} times",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          )),
          const SizedBox(
            height: 60,
          ),
          Center(child: Consumer<CountProvider>(
            builder: (context, value, child) {
              return Text(
                "${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}:${DateTime.now().second.toString()}",
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
              );
            },
          )),
          Center(child: Consumer<CountProvider>(
            builder: ((context, value, child) {
              return Text(
                value.count.toString(),
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
              );
            }),
          ))
        ],
      ),
    );
  }
}
