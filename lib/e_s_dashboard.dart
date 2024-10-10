import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ElectronicsStoreDashboard(),
    );
  }
}

class ElectronicsStoreDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Laptop'),
              Tab(text: 'Desktop'),
              Tab(text: 'Mobile'),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ProductListView(category: 'Laptop'),
                  ProductListView(category: 'Desktop'),
                  ProductListView(category: 'Mobile'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductListView extends StatelessWidget {
  final String category;

  ProductListView({required this.category});

  @override
  Widget build(BuildContext context) {
    final products = getProductsByCategory(category);

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlXsZhDMtrYrpmdjECcXtmpnjtqCHaHdGLYQ&s'),
            title: Text(product['name']!),
            subtitle: Text(product['description']!),
            trailing: Text('\$${product['price']}'),
          ),
        );
      },
    );
  }

  List<Map<String, String>> getProductsByCategory(String category) {
    // Dummy data for demonstration
    return [
      {
        'image': 'https://via.placeholder.com/150',
        'name': 'Acer Aspire 3 A315-23',
        'description': 'AMD Ryzen 3, 4GB RAM, 256GB SSD',
        'price': '2200',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'name': 'HP 15s-du1052tu',
        'description': 'Intel Celeron N4020, 4GB RAM, 1TB HDD',
        'price': '1580',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'name': 'Desktop PC AMD Ryzen 5',
        'description': '8GB RAM, 500GB SSD',
        'price': '2300',
      },
    ];
  }
}
