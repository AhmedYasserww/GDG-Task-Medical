import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      SvgPicture.asset("assets/images/cart_item.svg"),
          SizedBox(height: 47.h,),
          Text("Whoops",style: AppStyles.style16Normal.copyWith(color: const Color(0xff090F47)),),
          SizedBox(height: 11.h,),
          Text("Your cart is empty!",
            style: AppStyles.style14Normal.copyWith(fontWeight: FontWeight.w500,color: const Color(0xff090F47).withOpacity(.45)),)
        ],
      ),
    );
  }
}
