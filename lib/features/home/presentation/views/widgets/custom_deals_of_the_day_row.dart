import 'package:flutter/material.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class CustomDealsOfTheDayRow extends StatelessWidget {
  const CustomDealsOfTheDayRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Deals of the Day",style: AppStyles.style16semiBold,),
        TextButton(onPressed: (){},
            child: Text("More",style: AppStyles.style14Normal.copyWith(color: const Color(0xff1987FB)),))
      ],
    );
  }
}
