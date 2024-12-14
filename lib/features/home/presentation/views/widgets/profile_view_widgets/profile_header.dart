import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xff4157FF),
          radius: 33.r,
          child: CircleAvatar(
            radius: 31.r,
            backgroundImage: const AssetImage('assets/images/photo_person.png'),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              "Hi, Rahul Kanjariya",
              style: AppStyles.style20Regular.copyWith(color: const Color(0xff090F47).withOpacity(.45)),
            ),
            SizedBox(height: 4.h),
            Text(
              "Welcome to GDG Medical Store",
              style:  AppStyles.style14Normal.copyWith(color: const Color(0xff090F47).withOpacity(.45)),
            ),
          ],
        ),
      ],
    );
  }
}