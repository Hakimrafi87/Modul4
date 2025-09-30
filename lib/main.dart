
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveLayout(),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(color: Colors.orange),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(color: Colors.blue),
                ),
                Flexible(
                  flex: 2,
                  child: Container(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
