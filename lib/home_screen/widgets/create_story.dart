import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_theme.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(AppAssets.modelOneImage),
                ),
                const SizedBox(height: 16),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: AppTheme.white,
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundColor: AppTheme.primary,
                child: Icon(Icons.add, color: AppTheme.white),
              ),
            ),
          ],
        ),
        Text(
          "Create a\n story",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}