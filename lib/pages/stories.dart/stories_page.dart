import 'package:flutter/material.dart';
import 'package:idraaq/pages/stories.dart/stories_model.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<StoriesModel> story = StoriesModel.stories;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories of The Prophets'),
        centerTitle: true,
      ),

      //THE STORIES TILES WITH THE CONTENTS IN A ROW
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.brown),
          child: Row(
            children: [Text(story[index].name)],
          ),
        );
      }),
    );
  }
}
