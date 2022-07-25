class CatalogModel{
  static final items = [Item(
  id: 1,
  name: "iPhone 12 pro",
  desc: "Apple Iphone 12 pro",
  price: 999,
  color: "#33505a",
  image: "https://beyondapple.in/wp-content/uploads/2021/05/iphone-12-pro-family-hero-1.jpg"

)];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}


