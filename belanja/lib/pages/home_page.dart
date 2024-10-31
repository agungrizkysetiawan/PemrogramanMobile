import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/product_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'sugar.jpg',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'salt.jpg',
      stock: 100,
      rating: 4.0,
    ),
    Item(
      name: 'Rice',
      price: 10000,
      imageUrl: 'rice.jpg',
      stock: 200,
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return ProductCard(item: item);
              },
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
