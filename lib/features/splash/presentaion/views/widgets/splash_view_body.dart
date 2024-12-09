import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_task_medical/core/utilis/app_router.dart';
import 'package:gdg_task_medical/core/utilis/app_text_styles.dart';
import 'package:go_router/go_router.dart';
class SplashViewBody extends StatefulWidget {
 const  SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        GoRouter.of(context).push(AppRouter.kHomeView);
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Stack(
      fit: StackFit.expand,
      children: [
        Container(
          color: const Color(0xff4854fc),
          width: double.infinity,
          height: double.infinity,
          child: SvgPicture.asset(
            "assets/images/logo_background_svg.svg",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45,
              child: SvgPicture.asset(
                "assets/images/Vector.svg",
                width: 60,
                height: 60,
              ),
            ),
            const SizedBox(height: 20),
             Text(
              "GDG Medical",
              style: AppStyles.style20Regular
            ),
          ],
        ),
      ],
    );

  }
}
