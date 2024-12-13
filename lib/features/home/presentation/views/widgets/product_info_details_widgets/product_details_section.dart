import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Product Details", style: AppStyles.style16semiBold.copyWith(color: const Color(0xff090F47))),
        SizedBox(height: 8.h),
        Text(
          "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
          style: AppStyles.style14.copyWith(color: Colors.black.withOpacity(.45)),
        ),
        SizedBox(height: 30.h,),
        Row(
          children: [
            Text("Expiry Date: ", style: AppStyles.style16semiBold.copyWith(color: const Color(0xff090F47))),
            SizedBox(width: 25.w,),
            Text("25/12/2023", style: AppStyles.style14.copyWith(color: Colors.black.withOpacity(.45)),),

          ],

        ),
        SizedBox(height: 16.h,),
        Row(
          children: [
            Text("Brand Name: ", style: AppStyles.style16semiBold.copyWith(color: const Color(0xff090F47))),
            SizedBox(width: 25.w,),
            Text("Something", style: AppStyles.style14.copyWith(color: Colors.black.withOpacity(.45)),),
          ],

        ),
      ],
    );
  }
}