import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/model/user_info_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_svg/svg.dart';

class ProfileInfoListTile extends StatelessWidget {
  const ProfileInfoListTile({
    super.key,
    required this.model,
  });
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(model.image),
          title: Text(
            model.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            model.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
