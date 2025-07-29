class Product {
  final int productId;
  final String productName;
  final String smallDesc;
  final String mainDesc;
  final String categoryName;
  final int stock;
  final String imageUrl;
  final double rating;
  final List<String> sizes;
  final List<String> colors;
  final double price;
  final bool favorite;

  Product({
    required this.productId,
    required this.productName,
    required this.smallDesc,
    required this.mainDesc,
    required this.categoryName,
    required this.stock,
    required this.imageUrl,
    required this.rating,
    required this.sizes,
    required this.colors,
    required this.price,
    required this.favorite,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'],
      productName: json['productName'],
      smallDesc: json['smallDesc'],
      mainDesc: json['mainDesc'],
      categoryName: json['categoryName'],
      stock: json['stock'],
      imageUrl: json['imageUrl'],
      rating: json['rating'].toDouble(),
      sizes: List<String>.from(json['sizes']),
      colors: List<String>.from(json['colors']),
      price: json['price'].toDouble(),
      favorite: json['favorite'],
    );
  }
}
