import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_dashboard/utils/app_images.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_profile_listile.dart';
import 'drawer_listview.dart';

class CustomDawer extends StatelessWidget {
  const CustomDawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ProfileInfoListTile(
              image: Assets.imagesAvatar3,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          DrawerListView(),
        ],
      ),
    );
  }
}
