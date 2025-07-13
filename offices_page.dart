import 'package:flutter/material.dart';

class OfficesPage extends StatelessWidget {
  final List<Map<String, String>> offices = [
    {
      'name': 'مكتب السرعة',
      'contact': 'https://wa.me/201000000001'
    },
    {
      'name': 'مكتب التوصيل الذكي',
      'contact': 'https://wa.me/201000000002'
    },
    {
      'name': 'مكتب كرم',
      'contact': 'https://wa.me/201000000003'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('قائمة المكاتب'),
      ),
      body: ListView.builder(
        itemCount: offices.length,
        itemBuilder: (context, index) {
          final office = offices[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              title: Text(
                office['name']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(Icons.whatsapp, color: Colors.green),
                onPressed: () {
                  final url = office['contact']!;
                  // افتح رابط واتساب
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('رابط واتساب: $url')),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}