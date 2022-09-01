import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider.dart';

class SliderExampleScreen extends StatefulWidget {
  const SliderExampleScreen({Key? key}) : super(key: key);

  @override
  State<SliderExampleScreen> createState() => _SliderExampleScreenState();
}

class _SliderExampleScreenState extends State<SliderExampleScreen> {
  int n = 0;
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
          Consumer<SliderProvider>(builder: ((context, value, child) {
            return Slider(
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          })),
          Consumer<SliderProvider>(builder: ((context, value, child) {
            return Row(
              children: [
                Expanded(
                    child: Container(
                  height: 100,
                  decoration:
                      BoxDecoration(color: Colors.red.withOpacity(value.value)),
                  child: const Center(child: Text("Container 1")),
                )),
                Expanded(
                    child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value)),
                  child: const Center(child: Text("Container 1")),
                ))
              ],
            );
          }))
        ],
      ),
    );
  }
}
