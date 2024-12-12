import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class CategoryDetailsItem extends StatelessWidget {
  const CategoryDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 111,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          color: const Color(0xffF5F7FA)
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90.h,
              width: 111.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              color: const Color(0xffEEEEF0),

              image: const DecorationImage(
                image: AssetImage('assets/images/pills_bottle.png'),
                fit: BoxFit.fill,
              ),
            ),

          ),
          SizedBox(height: 6.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text("Sugar Substitute",
              style: AppStyles.style13Regular,
              maxLines: 2,
            ),
          ),
          SizedBox(height: 5.h,),

        ],
      ),
    );
  }
}
