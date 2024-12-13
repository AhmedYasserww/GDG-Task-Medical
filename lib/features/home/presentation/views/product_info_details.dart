import 'package:flutter/material.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/product_info_details_body.dart';
class ProductInfoDetails extends StatelessWidget {
  const ProductInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body:const ProductInfoDetailsBody() ,
    );
  }
}
