import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/provider.dart';

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
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
          ],
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
                  trailing: Consumer<FavouriteProvider>(
                    builder: (context, value, child) {
                      return IconButton(
                        onPressed: () {
                          if (value.selectedItem.contains(index)) {
                            value.removeFavourite(index);
                          } else {
                            value.addFavourite(index);
                          }
                        },
                        icon: Icon(value.selectedItem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_outline),
                      );
                    },
                  ));
            })));
  }
}
