import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/features/home/data/category_model.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/category_item.dart';
class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
          itemBuilder: (context,i){
        return  Padding(
          padding:  EdgeInsets.only(right: 11.w),
            child: CategoryItem(categoryModel: categories[i],));
      }),
    );
  }
}
