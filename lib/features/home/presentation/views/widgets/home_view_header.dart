import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            color: Color(0xff3D50E7)
        ),
        width: double.infinity,
        child:Padding(
          padding:  EdgeInsets.symmetric(horizontal: 26.w),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h,),
              CircleAvatar(
                radius: 20.r,
                backgroundImage:const AssetImage("assets/images/photo_person.png") ,

              ),
              SizedBox(height: 23.h,),
              Text("Hi, Rahul",style: AppStyles.style24Bold,),
              SizedBox(height: 3.h,),
              Text("Welcome to GDG Medical Store",style: AppStyles.style16Normal.copyWith(color: Colors.white),),
              SizedBox(height: 63.h,)
            ],
          ),
        ),
      ),
    );
  }
}
