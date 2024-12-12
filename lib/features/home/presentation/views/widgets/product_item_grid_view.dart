import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_item.dart';
class ProductItemGridView extends StatelessWidget {
  const ProductItemGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return   SliverGrid(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return  Padding(
            padding:  EdgeInsets.only(left: 16.w,right: 16.w),
            child:  const ProductItem(),
          );
        },
        childCount: 20,
      ),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 16.h,
        childAspectRatio: 150.w / 200.h,
      ),
    );

  }
}
