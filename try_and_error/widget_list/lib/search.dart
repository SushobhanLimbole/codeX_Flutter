import 'package:flutter/material.dart';
import 'package:widget_list/productModel.dart';

class SearchScreen extends StatefulWidget {
  final List<Product> products;

  SearchScreen({required this.products});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product> _filteredProducts = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredProducts = widget.products;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  _onSearchChanged() {
    setState(() {
      _filteredProducts = widget.products.where((product) {
        final searchLower = _searchController.text.toLowerCase();
        final productNameLower = product.productName.toLowerCase();
        final categoryNameLower = product.categoryName.toLowerCase();
        return productNameLower.contains(searchLower) ||
            categoryNameLower.contains(searchLower);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Products'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredProducts.length,
              itemBuilder: (context, index) {
                final product = _filteredProducts[index];
                return ListTile(
                  leading: Image.network(product.imageUrl),
                  title: Text(product.productName),
                  subtitle: Text(product.smallDesc),
                  trailing: Text(
                    '\₹${product.price}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {
                    // Navigate to product details page
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
