import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';

class ExtraOrderCategory extends StatelessWidget {
  const ExtraOrderCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        image: const DecorationImage(
          image: AssetImage('assets/images/Mask_Group.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
        child: Row(
          children: [
            Text(
              "Save extra on\n every order",
              style: AppStyles.style20Bold.copyWith(color: const Color(0xff1987FB)),
            ),
          ],
        ),
      ),
    );
  }
}
