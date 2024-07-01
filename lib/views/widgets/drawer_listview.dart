import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_images.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_drawer_listile.dart';

import '../../model/listile_model.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<ListileModel> drawerLest = const [
    ListileModel(title: "Dashboard", image: Assets.imagesDashboard),
    ListileModel(title: "My Transaction", image: Assets.imagesMyTransctions),
    ListileModel(title: "Statistics", image: Assets.imagesStatistics),
    ListileModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
    ListileModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerLest.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          child: CustomDrawerListile(
            listileModel: drawerLest[index],
            isActive: selectedIndex == index,
          ),
        );
      },
    );
  }
}
