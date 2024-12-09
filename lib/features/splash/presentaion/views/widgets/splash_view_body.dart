import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_task_medical/features/home/presentation/views/home_view.dart';
class SplashViewBody extends StatefulWidget {
 const  SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
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
            const Text(
              "GDG Medical",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );

  }
}
