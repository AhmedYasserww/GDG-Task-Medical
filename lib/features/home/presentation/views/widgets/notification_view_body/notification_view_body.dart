import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';

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

class NotificationOptionItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final String dateTime;
  final bool? isNew;

  const NotificationOptionItem({
    super.key,
    required this.title,
    required this.iconPath,
    required this.dateTime,
     this.isNew =false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Stack(
            children: [
              SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
              ),
              if (isNew == true)
                const Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.red,
                  ),
                ),

            ],
          ),
    trailing: isNew==true? const CircleAvatar(
    radius: 4,
    backgroundColor: Colors.red,
    )
        : null,

          title: Text(
            title,
            style: AppStyles.style14Normal.copyWith(
              color:  const Color(0xff091C3F),
            ),
            maxLines: 2,
          ),
          subtitle: Text(
            dateTime,
            style: AppStyles.style13Regular.copyWith(
              color: const Color(0xff090F47).withOpacity(.45),
            ),
          ),

        ),

        Divider(
          color: Colors.black.withOpacity(.08),
          thickness: 1,
        ),
      ],
    );
  }
}
