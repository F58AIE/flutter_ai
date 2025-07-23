import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartStore.AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {"name": "Product 1", "price": 99.99, "image": "https://via.placeholder.com/150"},
    {"name": "Product 2", "price": 49.50, "image": "https://via.placeholder.com/150"},
    {"name": "Product 3", "price": 199.00, "image": "https://via.placeholder.com/150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SmartStore.AI')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(12),
            child: ListTile(
              leading: Image.network(product['image']),
              title: Text(product['name']),
              subtitle: Text("\$${product['price']}"),
              trailing: Icon(Icons.add_shopping_cart),
              onTap: () {
                // TODO: Add to cart
              },
            ),
          );
        },
      ),
    );
  }
}
