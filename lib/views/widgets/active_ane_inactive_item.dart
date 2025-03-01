import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/model/listile_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.listileModel,
  });

  final ListileModel listileModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: SvgPicture.asset(listileModel.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            listileModel.title,
            style: AppStyles.styleRegular16(context),
          ),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.listileModel,
  });

  final ListileModel listileModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: SvgPicture.asset(listileModel.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            listileModel.title,
            style: AppStyles.styleBold16(context),
          ),
        ),
        trailing: Container(
          width: 3.27,
          decoration: const BoxDecoration(color: Color(0xff4EB7F2)),
        ),
      ),
    );
  }
}
