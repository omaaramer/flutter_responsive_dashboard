import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/model/listile_model.dart';
import 'package:flutter_responsive_dashboard/model/user_info_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_images.dart';
import 'package:flutter_responsive_dashboard/views/widgets/active_ane_inactive_item.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_profile_listile.dart';
import 'drawer_listview.dart';

class CustomDawer extends StatelessWidget {
  const CustomDawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // width: MediaQuery.sizeOf(context).width * 0.7,
        color: Colors.white,
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 36),
            ),
            SliverToBoxAdapter(
              child: ProfileInfoListTile(
                model: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subtitle: "demo@gmail.com",
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),
            DrawerListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 20)),
                  InActiveDrawerItem(
                    listileModel: ListileModel(
                      title: "Setting system",
                      image: Assets.imagesSettings,
                    ),
                  ),
                  InActiveDrawerItem(
                    listileModel: ListileModel(
                        title: "Logout account", image: Assets.imagesLogout),
                  ),
                  SizedBox(height: 48),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
