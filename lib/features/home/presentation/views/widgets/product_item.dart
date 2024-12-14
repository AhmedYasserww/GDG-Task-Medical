import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      color: Colors.white
    ),
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 128.h,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
            color: const Color(0xffEEEEF0),

            image: const DecorationImage(
              image: AssetImage('assets/images/pills_bottle.png'),
              fit: BoxFit.fill,
            ),
          ),

        ),
        SizedBox(height: 6.h,),
        Padding(
          padding: const EdgeInsets.only(left: 8,right: 30),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("Accu-check ActiveTest Strip addd ccc aa ww",style: AppStyles.style10Normal,
              maxLines: 2,
            ),
          ),
        ),
        SizedBox(height: 5.h,),
        Padding(
          padding:  EdgeInsets.only(left: 7.w),
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("Rs.112",style: AppStyles.style16semiBold,)),
        ),
      ],
    ),
  );
  }
}
