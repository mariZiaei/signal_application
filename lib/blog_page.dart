import 'package:flutter/material.dart';
import 'package:signal_aplication/constant_widget/post_widget.dart';

class BlogPage extends StatelessWidget {
  BlogPage({super.key});
  final listBlogWidget = [
    getPost(
        imageName: 'a.png',
        title: 'سیگنال خرید:Alchemi pay',
        buy: 'خرید روی:10585',
        sell: 'فروش روی:143645'),
    const SizedBox(
      height: 20,
    ),
    getPost(
        imageName: 'c.png',
        title: 'سیگنال خرید:Cosmos',
        buy: 'خرید روی:8585',
        sell: 'فروش روی:173645'),
    const SizedBox(
      height: 20,
    ),
    getPost(
        imageName: 'r.png',
        title: 'سیگنال خرید:Ripple',
        buy: 'خرید روی:5585',
        sell: 'فروش روی:123645'),
    const SizedBox(
      height: 20,
    ),
    getPost(
        imageName: 's.png',
        title: 'سیگنال خرید:SafeMoon',
        buy: 'خرید روی:5585',
        sell: 'فروش روی:173645'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 159, 159),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'vip  اخبار و سیگنال های ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 5, 5),
      ),
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...listBlogWidget,
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 124, 5, 5)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'خروج از حساب',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ))),
    );
  }
}
