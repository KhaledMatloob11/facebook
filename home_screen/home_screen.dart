import 'package:flutter/material.dart';
import '../core/app_assets.dart';
import '../core/app_theme.dart';
import 'widgets/create_post.dart';
import 'widgets/stories_section.dart';
import 'widgets/post_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Facebook',
            style: TextStyle(
              color: AppTheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage(AppAssets.addIcon)),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage(AppAssets.searchIcon)),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage(AppAssets.messengerIcon)),
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: ImageIcon(AssetImage(AppAssets.homeIcon))),
              Tab(icon: ImageIcon(AssetImage(AppAssets.videoIcon))),
              Tab(icon: ImageIcon(AssetImage(AppAssets.storeIcon))),
              Tab(icon: ImageIcon(AssetImage(AppAssets.accountIcon))),
              Tab(icon: ImageIcon(AssetImage(AppAssets.notificationIcon))),
              Tab(
                child: SizedBox(
                  width: 28,
                  height: 28,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.modelTwoImage),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: CreatePost()),
            const SliverToBoxAdapter(child: Divider()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 220,
                child: StoriesSection(),
              ),
            ),
            const SliverToBoxAdapter(child: Divider()),
            SliverList.separated(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const PostItem();
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ],
        ),
      ),
    );
  }
}