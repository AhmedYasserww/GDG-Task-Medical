import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
class PriceAndCartSection extends StatelessWidget {
  const PriceAndCartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Rs.99",
                  style: AppStyles.style18Bold.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
                Text(
                  "Rs.56",
                  style: AppStyles.style18Bold.copyWith(color: Colors.blue),
                ),
              ],
            ),


            SizedBox(height: 4.h),
            Text("Etiam mollis", style: AppStyles.style14Normal.copyWith(color: Colors.black.withOpacity(.7))),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text("Add to cart", style: AppStyles.style14Normal.copyWith(color: const Color(0xff006AFF))),
        ),
      ],
    );
  }
}
