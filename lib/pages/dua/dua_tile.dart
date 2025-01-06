import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dua_model.dart';
import 'dua_text_page.dart';

class DuaTile extends StatelessWidget {
  final DuaModel dua;
  const DuaTile({super.key, required this.dua});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        tileColor: Colors.black,
        textColor: Colors.white,
        onTap: () {
          Get.to(FullDua(
            dua: dua,
          ));
        },
        title: Text(
          dua.heading,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
