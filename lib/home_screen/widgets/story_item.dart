import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_theme.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(AppAssets.modelThreeImage),
        ),
        Container(
          margin:  EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppTheme.primary, width: 3),
          ),
          child:  CircleAvatar(
            backgroundImage: AssetImage(AppAssets.modelOneImage),
          ),
        ),
      ],
    );
  }
}