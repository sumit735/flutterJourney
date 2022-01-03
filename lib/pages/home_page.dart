import 'package:flutter/material.dart';
import 'package:myfirstapp/models/catalog.dart';
import 'package:myfirstapp/widgets/drawer.dart';
import 'package:myfirstapp/widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const num = 7;
    const name = "sumit";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: const NewDrawer(),
    );
  }
}
