import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];

  // Get Item By Id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //grtItem by Position
  Item getByPossition(int pos) => items[pos];

  //   Item(
  //       id: 1,
  //       name: "iPhone 12 pro",
  //       desc: "Apple Iphone 12 pro",
  //       price: 999,
  //       color: "#33505a",
  //       image: "https://m.media-amazon.com/images/I/71umuN8XVeL._SX522_.jpg")
  // ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.frommap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
