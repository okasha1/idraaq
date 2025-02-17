import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idraaq/pages/99names/name_tile.dart';
import 'package:idraaq/pages/99names/names_model.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<NamesModel> names = NamesModel.namesAllah;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Asma Al-Husna',
            style: TextStyle(
                color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => Nametile(
                index: index + 1,
                nameArabic: names[index].arabicName,
                englishMeaning: names[index].englishMeaning)));
  }
}
