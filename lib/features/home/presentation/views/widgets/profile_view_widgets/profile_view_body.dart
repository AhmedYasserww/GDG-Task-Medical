import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/profile_view_widgets/profile_header.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/profile_view_widgets/profile_option.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 22.w),
      child:  Column(
        children:  [
          const ProfileHeader(),
          SizedBox(height: 34.h),
          const ProfileOptions(),
        ],
      ),
    );
  }
}
