import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/model/listile_model.dart';

import 'active_ane_inactive_item.dart';

class CustomDrawerListile extends StatelessWidget {
  const CustomDrawerListile(
      {super.key, required this.listileModel, required this.isActive});
  final ListileModel listileModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(listileModel: listileModel)
        : InActiveDrawerItem(listileModel: listileModel);
  }
}
