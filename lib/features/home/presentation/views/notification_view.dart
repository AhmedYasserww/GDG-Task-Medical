import 'package:flutter/material.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/notification_view_body/notification_view_body.dart';
class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Notification", style: AppStyles.style16Bold.copyWith(color: const Color(0xff090F47)),),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(onPressed: (){}, child: Text("Clear all",
            style: AppStyles.style13Regular.copyWith(color: const Color(0xff1987FB),fontWeight:FontWeight.w500 ),))
        ],
      ),
      body: const NotificationViewBody(),
    );
  }
}
