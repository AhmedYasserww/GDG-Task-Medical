import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utilis/app_text_styles.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:(){},
      height: 45,
      minWidth: double.infinity,
      color: const Color(0xff4157FF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(56.r)),),
      child: Text("GO TO CART",style: AppStyles.style16Bold.copyWith(color: Colors.white),),
    );
  }
}