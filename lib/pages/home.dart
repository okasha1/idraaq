import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idraaq/pages/99names/name_page.dart';
import 'package:idraaq/pages/dua/dua_page.dart';
import 'package:idraaq/pages/fiqh/fiqh_page.dart';
import 'package:idraaq/pages/stories.dart/stories_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
        ),
        Positioned(
          top: 0,
          child: Container(
            width: width,
            height: height * 0.55,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/mosq.jpg'),
              ),
            ),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 45),
                  child: Text(
                    'I D R A A Q \nYour Knowledge Companion',
                    style: GoogleFonts.gabriela(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 244, 245, 241)),
                  ),
                )),
          ),
        ),
        Positioned(
          top: height * 0.5,
          child: Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.purple[50]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => NamePage(),
                                transition: Transition.cupertino,
                                duration: Duration(milliseconds: 900));
                          },
                          child: Container(
                              height: 155,
                              width: 180,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 5,
                                      color: const Color.fromARGB(
                                          255, 219, 219, 219))
                                ],
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Allah.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Asma Al-Husna',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => DuaPage(),
                                transition: Transition.cupertino,
                                duration: Duration(milliseconds: 900));
                          },
                          child: Container(
                              height: 155,
                              width: 180,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 5,
                                      color: const Color.fromARGB(
                                          255, 150, 146, 146))
                                ],
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/download.jpeg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                              ),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Dua & Supplications',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => FiqhPage(),
                                transition: Transition.cupertino,
                                duration: Duration(milliseconds: 900));
                          },
                          child: Container(
                            height: 155,
                            width: 180,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    color: const Color.fromARGB(
                                        255, 150, 146, 146))
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/pic.jpeg'),
                                  fit: BoxFit.fill,
                                  opacity: 0.9),
                            ),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 25,
                              //color: Colors.grey.withValues(alpha: 0.5),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Usul Al-Fiqh - Jurisprudence',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => StoriesPage(),
                                transition: Transition.cupertino,
                                duration: Duration(milliseconds: 900));
                          },
                          child: Container(
                              height: 155,
                              width: 180,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 5,
                                      color: const Color.fromARGB(
                                          255, 150, 146, 146))
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.yellow,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/imam.jpg'),
                                    fit: BoxFit.cover),
                              ),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Stories of the Prophets',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ))),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        )
      ],
    ));
  }
}
