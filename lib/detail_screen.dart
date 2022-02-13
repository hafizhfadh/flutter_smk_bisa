import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  const DetailScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 100, color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
