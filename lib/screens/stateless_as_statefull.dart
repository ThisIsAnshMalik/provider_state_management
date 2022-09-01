import 'package:flutter/material.dart';

class StatelessAsStatefullScreen extends StatelessWidget {
  StatelessAsStatefullScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> _count = ValueNotifier(0);
  final ValueNotifier<bool> _hideen = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless as Statefull Widget Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: _count,
              builder: ((context, value, child) {
                return Center(
                    child: Text(
                  _count.value.toString(),
                  style: const TextStyle(fontSize: 50),
                ));
              })),
          const SizedBox(
            height: 29,
          ),
          ValueListenableBuilder(
              valueListenable: _hideen,
              builder: ((context, value, child) {
                return Center(
                    child: TextFormField(
                        obscureText: _hideen.value,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          suffixIcon: InkWell(
                              onTap: (() {
                                if (_hideen.value == true) {
                                  _hideen.value = false;
                                } else {
                                  _hideen.value = true;
                                }
                              }),
                              child: Icon(_hideen.value
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        )));
              })),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          _count.value++;
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
