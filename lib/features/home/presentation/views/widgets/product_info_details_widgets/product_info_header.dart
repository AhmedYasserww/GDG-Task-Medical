import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sugar Free Gold Low Calories", style: AppStyles.style22Bold),
        SizedBox(height: 4.h),
        Text("Etiam mollis metus non purus", style: AppStyles.style14Normal.copyWith(color: Colors.grey)),
      ],
    );
  }
}