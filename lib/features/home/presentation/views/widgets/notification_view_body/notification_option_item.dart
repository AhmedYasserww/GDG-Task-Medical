import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
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
