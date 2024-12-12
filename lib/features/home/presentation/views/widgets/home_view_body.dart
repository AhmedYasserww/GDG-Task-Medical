import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/custom_deals_of_the_day_row.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/extra_order_caegory.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/home_view_header.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_item_grid_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeViewHeader(),
        SizedBox(height: 50.h,),
        Text("Top Categories",style: AppStyles.style16semiBold,),
        SizedBox(height: 3.h,),
        const CategoryItemListView(),
        SizedBox(height: 26.h,),
        const ExtraOrderCategory(),
        SizedBox(height: 27.h,),
        const CustomDealsOfTheDayRow(),

      ],
    ),
        ),
        const ProductItemGridView()
      ],
      
    );
  }
}

