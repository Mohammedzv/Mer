import 'offices_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WoslyApp());
}

class WoslyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'وصلي',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Arial',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String gifUrl =
      'https://media.giphy.com/media/xT0xeJpnrWC4XWblEk/giphy.gif';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                gifUrl,
                height: 200,
              ),
              SizedBox(height: 30),
              Text(
                'وصلي',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'تطبيق توصيل ذكي يجمع أفضل المكاتب في مكان واحد',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // هنا هتحط التنقل لصفحة المكاتب
                },
                child: Text(
                  'عرض المكاتب',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}