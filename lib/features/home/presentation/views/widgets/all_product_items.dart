import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gdg_task_medical/core/utilis/app_router.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
import 'package:go_router/go_router.dart';

class AllProductItems extends StatelessWidget {
  const AllProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kAllProductDetailsView);
      },
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 128.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    color: const Color(0xffEEEEF0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/pills_bottle.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    width: 70.w,
                    height: 80.h,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                          ),
                          child: ClipPath(
                            clipper: TriangleClipper(),
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: -0.785,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "SALE",
                              style: AppStyles.style22Bold.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 30),
              child: Text(
                "Accu-check Active Test Strip",style: AppStyles.style13Regular.copyWith(color: const Color(0xff090F47)),
                maxLines: 2,
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Text(
                "Rs.112",
                style: AppStyles.style16semiBold.copyWith(color: const Color(0xff090F47))
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
