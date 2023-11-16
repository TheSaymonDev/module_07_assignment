class Product {
  String name;
  int price;
  int count;

  Product({required this.name, required this.price, required this.count});

  static List<Product> productList=[
    Product(name: 'Product 1', price: 320, count: 0),
    Product(name: 'Product 2', price: 420, count: 0),
    Product(name: 'Product 3', price: 520, count: 0),
    Product(name: 'Product 4', price: 620, count: 0),
    Product(name: 'Product 5', price: 720, count: 0),
    Product(name: 'Product 6', price: 820, count: 0),
    Product(name: 'Product 7', price: 920, count: 0),
    Product(name: 'Product 8', price: 120, count: 0),
  ];

}