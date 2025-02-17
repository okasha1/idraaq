import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'stories_model.dart';

class StoryPage extends StatelessWidget {
  final StoriesModel story;
  const StoryPage({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        centerTitle: true,
        title: Text(story.name,
            style: GoogleFonts.gabriela(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5, left: 10, right: 5),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Text(
            story.content,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
