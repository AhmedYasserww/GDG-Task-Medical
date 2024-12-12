import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/all_product_items.dart';
class AllProductsGridView extends StatelessWidget {
  const AllProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return  Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
              child:  const AllProductItems());
        },
        childCount: 30,
      ),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 11.h,
        crossAxisSpacing: 0,
        childAspectRatio: 0.88,
      ),
    );
  }
}
