import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_dashboard/utils/app_images.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_drawer_listile.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_profile_listile.dart';

import '../../model/listile_model.dart';

class CustomDawer extends StatelessWidget {
  const CustomDawer({super.key});
  static const List<ListileModel> drawerLest = [
    ListileModel(
      title: "Dashboard",
      image: Assets.imagesDashboard,
    ),
    ListileModel(title: "My Transaction", image: Assets.imagesMyTransctions),
    ListileModel(title: "Statistics", image: Assets.imagesStatistics),
    ListileModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
    ListileModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const ProfileInfoListTile(
          image: Assets.imagesAvatar3,
          title: "Lekan Okeowo",
          subtitle: "demo@gmail.com",
        ),
        const SizedBox(height: 40),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CustomDrawerListile(listileModel: drawerLest[index]);
            },
            itemCount: drawerLest.length)
      ]),
    );
  }
}
