import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_router.dart';
import 'package:gdg_task_medical/features/home/data/category_model.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilis/app_text_styles.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
GoRouter.of(context).push(AppRouter.kCategoryDetails );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(70.r)),
          color: Colors.white,
        ),
       // width: 75.w,
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal:12.w),
          child: Column(
            children: [
              SizedBox(height: 9.h,),
              CircleAvatar(
                radius: 29.r,
                backgroundColor: categoryModel.color,
              ),
              SizedBox(height: 6.h,),
              FittedBox(
                fit: BoxFit.scaleDown,
                  child: Text(categoryModel.text,style: AppStyles.style11,)),
              SizedBox(height: 29.h,)
            ],
          ),
        )
      ),
    );
  }
}
