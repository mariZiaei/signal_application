import 'package:flutter/material.dart';

Widget getPost(
    {required String imageName,
    required String title,
    required String buy,
    required String sell}) {
  return Column(
    children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('images/$imageName')),
      const SizedBox(
        height: 10,
      ),
      Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sell,
            style: const TextStyle(color: Color.fromARGB(255, 3, 84, 7)),
          ),
          const Icon(
            Icons.sell,
            color: Color.fromARGB(255, 3, 84, 7),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            buy,
            style: const TextStyle(color: Color.fromARGB(255, 199, 27, 15)),
          ),
        ],
      ),
      const SizedBox(
        width: 220,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
