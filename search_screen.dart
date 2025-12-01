import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  // قائمة العناصر للعرض
  final List<Map<String, dynamic>> items = [
    {
      'title': 'عنصر 1',
      'subtitle': 'هذا هو الوصف الأول',
      'icon': Icons.star,
      'color': Colors.red,
    },
    {
      'title': 'عنصر 2',
      'subtitle': 'هذا هو الوصف الثاني',
      'icon': Icons.favorite,
      'color': Colors.green,
    },
    {
      'title': 'عنصر 3',
      'subtitle': 'هذا هو الوصف الثالث',
      'icon': Icons.shopping_cart,
      'color': Colors.blue,
    },
    {
      'title': 'عنصر 4',
      'subtitle': 'هذا هو الوصف الرابع',
      'icon': Icons.email,
      'color': Colors.orange,
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة البحث'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // وظيفة البحث
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: item['color'],
                child: Icon(
                  item['icon'],
                  color: Colors.white,
                ),
              ),
              title: Text(
                item['title'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(item['subtitle']),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),

            ),
          );
        },
      ),

    );
  }
}