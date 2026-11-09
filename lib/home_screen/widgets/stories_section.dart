import 'package:facebook/home_screen/widgets/post_item.dart';
import 'package:flutter/material.dart';

import 'create_story.dart';
import 'story_item.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return SizedBox(
          width: size.width * .3,
          child: index == 0 ? const CreateStory() : const StoryItem(),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: size.width * .02);
      },
      itemCount: 20,
    );
  }
}