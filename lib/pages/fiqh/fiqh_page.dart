import 'package:flutter/material.dart';

import 'fiqh_model.dart';

class FiqhPage extends StatefulWidget {
  const FiqhPage({
    super.key,
  });

  @override
  State<FiqhPage> createState() => _FiqhPageState();
}

class _FiqhPageState extends State<FiqhPage> {
  List<FiqhModel> fiqhList = FiqhModel.fiqhList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FIQH'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreenAccent),
                child: Center(
                    child: Column(
                  children: [
                    Text(
                      fiqhList[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(fiqhList[index].explanation)
                  ],
                )),
              ),
            );
          },
          itemCount: fiqhList.length,
        ));
  }
}
