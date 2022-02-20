import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  final String title;
  final String imageUrl;

  const DetailScreen({
    Key? key,
    required this.title,
    this.imageUrl = "",
    this.index = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          child: IconButton(
            icon: const Icon(
              Icons.account_balance_wallet_outlined,
              size: 60,
            ),
            onPressed: () async {
              if (!await launch("https://google.com")) {
                throw 'Could not launch https://google.com';
              }
            },
          ),
        ),
        color: Colors.amber,
      ),
      body: Center(
        child: ListView(
          children: [
            Hero(
              tag: index,
              child: Image.asset(imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
