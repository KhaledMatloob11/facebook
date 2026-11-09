import 'package:flutter/material.dart';
import '../../core/app_assets.dart';
import '../../core/app_theme.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'What\'s on your mind?',
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          fillColor: AppTheme.white,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0,
          ),
          suffixIcon: const ImageIcon(
            AssetImage(AppAssets.galleryImage),
          ),
          prefixIcon: const CircleAvatar(
            backgroundImage: AssetImage(AppAssets.modelOneImage),
          ),
        ),
      ),
    );
  }
}