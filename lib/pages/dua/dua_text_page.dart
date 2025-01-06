import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/text_reuse.dart';
import 'dua_model.dart';

class FullDua extends StatelessWidget {
  final DuaModel dua;
  const FullDua({super.key, required this.dua});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/pray.jpeg'),
          opacity: 1.2,
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 2.0, color: Colors.white))),
                    height: 100,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        Flexible(
                          child: Text(
                            dua.heading,
                            style: GoogleFonts.courierPrime(
                                fontSize: 25, color: Colors.amber),
                            //overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )),
                TextReuse(
                  text: dua.duaArabic,
                  fontSize: 28,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 15,
                ),
                TextReuse(
                  text: dua.duaTranslitration,
                  fontSize: 18,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 25,
                ),
                TextReuse(
                  text: dua.duaTranslation,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
