import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_info_details_widgets/custom_button.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_info_details_widgets/image_carousel.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_info_details_widgets/price_and_cart_section.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_info_details_widgets/product_details_section.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_info_details_widgets/product_info_header.dart';

class ProductInfoDetailsBody extends StatelessWidget {
  const ProductInfoDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderSection(),
                SizedBox(height: 16.h),
                const ImageCarousel(),
                SizedBox(height: 16.h),
                const PriceAndCartSection(),
                SizedBox(height: 16.h),
                const ProductDetailsSection(),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
         SliverFillRemaining(
          hasScrollBody: false,
          child:    Align(
            alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomButton(),
              )),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16.h,))
      ],
    );
    // return SingleChildScrollView(
    //     padding: EdgeInsets.symmetric(horizontal: 24.w),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const HeaderSection(),
    //         SizedBox(height: 16.h),
    //         const ImageCarousel(),
    //         SizedBox(height: 16.h),
    //         const PriceAndCartSection(),
    //         SizedBox(height: 16.h),
    //         const ProductDetailsSection(),
    //         SizedBox(height: 16.h),
    //         const CustomButton(),
    //       ],
    //     ),
    //   );

  }
}








