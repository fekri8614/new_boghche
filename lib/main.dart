import 'package:flutter/material.dart';

import 'category.dart';
import 'post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.red),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Amir Ali'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryList(),
            const Divider(
              color: Colors.black,
            ),
            Post(
              "محصول شماره ی ۱",
              "۷۰۰ تومان",
              "۱۵:۴۵ دقیقه",
              'https://picsum.photos/250?image=10',
              onItemClicked: () {},
            ),
            const Divider(
              color: Colors.black,
            ),
            Post(
              "محصول شماره ی ۲",
              "۳۰۰ تومان",
              "۱۸:۴۵ دقیقه",
              'https://picsum.photos/250?image=9',
              onItemClicked: () {},
            ),
            const Divider(
              color: Colors.black,
            ),
            Post(
              "محصول شماره ی ۳",
              "۹۰۰ تومان",
              "۰۸:۱۲ دقیقه",
              'https://picsum.photos/250?image=13',
              onItemClicked: () {},
            ),
            const Divider(
              color: Colors.black,
            ),
            Post(
              "محصول شماره ی ۴",
              "۱۰۰ تومان",
              "۰۳:۴۵ دقیقه",
              'https://picsum.photos/250?image=7',
              onItemClicked: () {},
            ),
            const Divider(
              color: Colors.black,
            ),
            Post(
              "محصول شماره ی ۵",
              "۹۰۰ تومان",
              "۱۳:۴۵ دقیقه",
              'https://picsum.photos/250?image=1',
              onItemClicked: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  String imageUrl;

  SecondPage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Image.network(
            imageUrl,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
