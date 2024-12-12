import 'package:flutter/material.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_item.dart';
class ProductItemGridView extends StatelessWidget {
  const ProductItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return   SliverGrid(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return const ProductItem();
        },
        childCount: 20,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.90,
      ),
    );

  }
}
