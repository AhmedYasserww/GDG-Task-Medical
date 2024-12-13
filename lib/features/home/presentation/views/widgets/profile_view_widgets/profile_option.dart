import 'package:flutter/material.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/profile_view_widgets/profile_option_item.dart';
class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [
        ProfileOptionItem(
          iconPath: "assets/images/edit_icon.svg",
          title: "Edit Profile",
        ),
        ProfileOptionItem(
          iconPath: "assets/images/order_icon.svg",
          title: "My orders",
        ),
        ProfileOptionItem(
          iconPath: "assets/images/biling_icon.svg",
          title: "Billing",
        ),
        ProfileOptionItem(
          iconPath: "assets/images/fag_icon.svg",
          title: "Faq",
        ),
      ],
    );
  }
}
