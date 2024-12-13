import 'package:flutter/material.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/profile_view_widgets/profile_view_body.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("Profile", style: AppStyles.style16Bold.copyWith(color: const Color(0xff090F47)),),
      ),
      body: const ProfileViewBody(),
    );
  }
}
