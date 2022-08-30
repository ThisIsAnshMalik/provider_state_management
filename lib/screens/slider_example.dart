import 'package:flutter/material.dart';

class SliderExampleScreen extends StatefulWidget {
  const SliderExampleScreen({Key? key}) : super(key: key);

  @override
  State<SliderExampleScreen> createState() => _SliderExampleScreenState();
}

class _SliderExampleScreenState extends State<SliderExampleScreen> {
  int n = 0;
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider Example Screen")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "this page is rebuild ${n++} times",
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 50,
          ),
          Slider(
              value: value,
              onChanged: (val) {
                setState(() {
                  value = val;
                });
              }),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.red.withOpacity(value)),
                child: const Center(child: Text("Container 1")),
              )),
              Expanded(
                  child: Container(
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.green.withOpacity(value)),
                child: const Center(child: Text("Container 1")),
              ))
            ],
          )
        ],
      ),
    );
  }
}
