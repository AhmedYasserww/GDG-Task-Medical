import 'package:flutter/material.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/notification_view_body/notification_option_item.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: const [
          NotificationOptionItem(
            title: "We know that—for children AND adults—learning is most effective when it is",
            iconPath: "assets/images/notification_icon1.svg",
            dateTime: "Aug 12, 2020 at 12:08 PM",
            isNew: true,
          ),
          NotificationOptionItem(
            title: "The future of professional learning is immersive, communal experiences for",
            iconPath: "assets/images/notification_icon_2.svg",
            dateTime: "Aug 12, 2020 at 12:08 PM",
          ),
          NotificationOptionItem(
            title: "With this in mind, Global Online Academy created the Blended Learning Design",
            iconPath: "assets/images/notification_icon4.svg",
            dateTime: "Aug 12, 2020 at 12:08 PM",
          ),
          NotificationOptionItem(
            title: "Technology should serve, not drive, pedagogy. Schools often discuss",
            iconPath: "assets/images/notification_icon4.svg",
            dateTime: "Aug 12, 2020 at 12:08 PM",
          ),
          NotificationOptionItem(
            title: "Peer learning works. By building robust personal learning communities both",
            iconPath: "assets/images/notification_icon4.svg",
            dateTime: "Aug 12, 2020 at 12:08 PM",
          ),
        ],
      );

  }
}

