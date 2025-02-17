import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idraaq/pages/stories.dart/stories_model.dart';
import 'package:idraaq/pages/stories.dart/story_page.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<StoriesModel> story = StoriesModel.stories;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories Of The Prophets'),
        centerTitle: true,
      ),

      //THE STORIES TILES WITH THE CONTENTS IN A ROW
      body: ListView.builder(
          itemCount: story.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(
                  () => StoryPage(story: story[index]),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
                padding: EdgeInsets.only(
                  left: 10,
                ),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.brown),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(story[index].name,
                          style: GoogleFonts.gabriela(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
