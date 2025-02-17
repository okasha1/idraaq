import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dua_model.dart';
import 'dua_tile.dart';

class DuaPage extends StatefulWidget {
  const DuaPage({super.key});

  @override
  State<DuaPage> createState() => _DuaPageState();
}

class _DuaPageState extends State<DuaPage> {
  List<DuaModel> duas = DuaModel.duas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.amber,
          ),
        ),
        title: Text(
          "Dua and Supplications ",
          style: GoogleFonts.gabriela(
            color: Colors.amber,
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return DuaTile(
              dua: duas[index],
            );
          },
          itemCount: 20,
          padding: const EdgeInsets.only(bottom: 30),
        ),
      ),
    );
  }
}
