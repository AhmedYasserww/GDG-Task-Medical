import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/all_products_grid_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/category_details_item_list_view.dart';
class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:    Padding(
            padding:  const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Categories",style:AppStyles.style16semiBold ,),
                SizedBox(height: 16.h,),
                const CategoryDetailsItemListView(),
                SizedBox(height: 40.h,),
                Text("All Product",style: AppStyles.style16Normal,),
                const SizedBox(height: 5,),


              ],
            ),
          ) ,
        ),
        const AllProductsGridView(),
        SliverToBoxAdapter(child: SizedBox(height: 16.h,),)
      ],
    );


  }
}
