import 'package:flutter/material.dart';

import '../../core/app_assets.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage(AppAssets.modelTwoImage),
          ),
          title: const Text(
            'Khaled Matloob',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: [
              const Text('2 hr'),
              const SizedBox(width: 4),
              Image.asset(AppAssets.earthImage),
            ],
          ),
          trailing: const Icon(Icons.more_horiz),
        ),
        Image.asset(AppAssets.routeImage),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.comment),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border),
            ),
          ],
        ),
      ],
    );
  }
}