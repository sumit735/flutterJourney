class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "test product",
        desc: "this is a dummy product",
        price: 565,
        color: "#33505a",
        image:
            "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png")
  ];
}
