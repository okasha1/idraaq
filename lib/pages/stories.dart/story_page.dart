import 'package:flutter/material.dart';

import 'stories_model.dart';

class StoryPage extends StatelessWidget {
  final StoriesModel story;
  const StoryPage({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(story.name),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Text(
            story.content,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
