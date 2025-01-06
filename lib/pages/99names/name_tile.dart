import 'package:flutter/material.dart';

class Nametile extends StatelessWidget {
  final int index;
  final String nameArabic;
  final String englishMeaning;
  const Nametile(
      {super.key,
      required this.index,
      required this.nameArabic,
      required this.englishMeaning});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListTile(
            title: Text(
              nameArabic,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            tileColor: Colors.black,
            subtitle: Text(
              englishMeaning,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            leading: Text(
              index.toString(),
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),
            trailing: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/small.jpeg',
              ),
              radius: 30,
            )),
      ),
    );
  }
}
