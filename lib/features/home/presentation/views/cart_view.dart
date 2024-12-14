import 'package:flutter/material.dart';
import 'package:gdg_task_medical/features/home/presentation/views/widgets/cart_view_widgets/cart_view_body.dart';
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CartViewBody(),
    );
  }
}
