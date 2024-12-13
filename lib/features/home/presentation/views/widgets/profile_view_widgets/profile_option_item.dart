import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class ProfileOptionItem extends StatelessWidget {
  final String title;
  final String iconPath;
  const ProfileOptionItem({
    super.key,
    required this.title, required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading:SvgPicture.asset(
              iconPath
          ),
          title: Text(
            title,
            style: AppStyles.style15Medium.copyWith(color: const Color(0xff090F47).withOpacity(.75)),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 10),
          onTap: () {
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60,right: 7),
          child: Divider(
            color: Colors.black.withOpacity(.08),
            thickness: 1,
          ),
        )
      ],
    );
  }
}
