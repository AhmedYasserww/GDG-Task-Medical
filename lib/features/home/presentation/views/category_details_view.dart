import 'package:flutter/material.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/category_details_view_body.dart';
class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Diabetes Care",
        style: AppStyles.style16Bold.copyWith(color:const Color(0xff090F47)),),),
      body: const CategoryDetailsViewBody(),
    );
  }
}
