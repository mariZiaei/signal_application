import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:signal_aplication/blog_page.dart';
import 'package:signal_aplication/forget_password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 199, 159, 159),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'signal vip',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.login)
                ],
              ),
              Lottie.asset('assets/anime.json'),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(180, 40),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 11, 11, 11), width: 2.0),
                  foregroundColor: Colors.black,
                ),
                onPressed: () {},
                child: const Text(
                  'ثبت نام',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 2.0),
                    minimumSize: const Size(180, 40),
                    foregroundColor: Colors.black,
                    backgroundColor: const Color.fromARGB(255, 124, 5, 5)),
                onPressed: () {
                  navigatorTo(context, BlogPage());
                },
                child: const Text('ورود به حساب',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 60, 59, 59)),
                  onPressed: () {
                    navigatorTo(context, const ForgetPassword());
                  },
                  child: const Text('فراموشی رمز عبور')),
            ],
          ),
        )));
  }

  void navigatorTo(BuildContext context, Widget page) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }
}
