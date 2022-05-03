class Product{
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl});

  static const List<Product> product = [
    Product(
        name: 'Pizza',
        price: 180,
        imageUrl: 'https://thumbs.dreamstime.com/z/pizza-vector-version-3416730.jpg'),
    Product(
        name: 'Burger',
        price: 100,
        imageUrl: 'https://thumbs.dreamstime.com/z/america-burger-vector-illustration-decorative-design-186843921.jpg'),
    Product(
        name: 'Biryani',
        price: 150,
        imageUrl: 'https://as2.ftcdn.net/v2/jpg/02/40/55/29/1000_F_240552924_MQMvQXIQXtDrNjlrKyuUvyOoY2mvt8y5.jpg'),
    Product(
        name: 'Noodles',
        price: 100,
        imageUrl: 'https://t4.ftcdn.net/jpg/01/01/80/63/240_F_101806328_j2TecvBdFNDsfwj6JPeGJKWWBggXAPZk.jpg'),
    Product(
        name: 'Fried rice',
        price: 120,
        imageUrl: 'https://as1.ftcdn.net/v2/jpg/03/86/81/02/1000_F_386810271_DocUfdrzgHlIcslAzZCj2RzjX1hwwgy0.jpg'),
    Product(
        name: 'Veg Thali',
        price: 120,
        imageUrl: 'https://t3.ftcdn.net/jpg/01/46/20/26/240_F_146202692_1hsLkUAaV8ze7xtfCOgvfklod5dZEx35.jpg'),
    Product(
        name: 'Burger Combo',
        price: 120,
        imageUrl: 'https://t3.ftcdn.net/jpg/03/23/86/16/240_F_323861683_0O8NhTg0DAiLxEcc7yyU6Wbo1snm0WRr.jpg')
  ];
}