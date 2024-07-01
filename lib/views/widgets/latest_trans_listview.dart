import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_dashboard/model/user_info_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_images.dart';
import 'package:flutter_responsive_dashboard/views/widgets/custom_profile_listile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});
  static const List<UserInfoModel> list = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subtitle: "JoshNunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: "Josua Nunito",
        subtitle: "JoshNunito@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: list
              .map((e) => IntrinsicWidth(child: ProfileInfoListTile(model: e)))
              .toList()),
    );

    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: list.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(child: ProfileInfoListTile(model: list[index]));
    //     },
    //   ),
    // );
  }
}
