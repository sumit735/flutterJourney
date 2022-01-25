import 'package:flutter/material.dart';
import 'package:myfirstapp/models/catalog.dart';
import 'package:myfirstapp/pages/home_details_page.dart';
import 'package:myfirstapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetails(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class HomeDetailsPage {}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(MyTheme.blueColor).bold.make(),
                catalog.desc.text.caption(context).make(),
                10.heightBox,
                ButtonBar(
                  buttonPadding: EdgeInsets.zero,
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.lg.make(),
                    ElevatedButton(
                      onPressed: () => {},
                      child: "Add To Cart".text.make(),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          MyTheme.blueColor,
                        ),
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(),
                        ),
                      ),
                    ),
                  ],
                ).pOnly(right: 8),
              ],
            ),
          ),
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}
