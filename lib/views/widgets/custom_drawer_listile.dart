import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/model/listile_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawerListile extends StatelessWidget {
  const CustomDrawerListile({super.key, required this.listileModel});
  final ListileModel listileModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(listileModel.image),
      title: Text(
        listileModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}
