import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Favourite Screen"),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text(
                  "Item ${++index}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
              );
            })));
  }
}
