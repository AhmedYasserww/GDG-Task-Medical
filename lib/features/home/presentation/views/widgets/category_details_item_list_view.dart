import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/category_details_item.dart';
class CategoryDetailsItemListView extends StatelessWidget {
  const CategoryDetailsItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
          itemBuilder: (context,i){
        return Padding(
          padding:  EdgeInsets.only(right: 17.w),
          child: const CategoryDetailsItem(),
        );
      }),
    );
  }
}
