import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EpensesItemHeader extends StatelessWidget {
  const EpensesItemHeader(
      {super.key, required this.image, this.imagecolor, this.imageBackground});
  final String image;
  final Color? imagecolor, imageBackground;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackground ?? const Color(0xfffafafa),
            shape: const OvalBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imagecolor ?? const Color(0xff4eb7f2), BlendMode.srcIn),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: imagecolor == null ? const Color(0xff064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
