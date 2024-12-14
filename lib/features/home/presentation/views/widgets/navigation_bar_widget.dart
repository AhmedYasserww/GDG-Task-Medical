import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_task_medical/features/home/presentation/views/cart_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/home_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/notification_view.dart';
import 'package:gdg_task_medical/features/home/presentation/views/profile_view.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedIndex = 0;

  List<Widget> views = [
    const HomeView(),
    const NotificationView(),
   const CartView(),
   const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: () => setState(() => selectedIndex = 0),
                child: SvgPicture.asset(
                  "assets/images/home_icon.svg",
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 0 ? Colors.blue :  Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: () => setState(() => selectedIndex = 1),
                child: SvgPicture.asset(
                  "assets/images/btn_notification_icon.svg",
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 1 ? Colors.blue : Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 3),
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: () => setState(() => selectedIndex = 2),
                child: SvgPicture.asset(
                  "assets/images/cart_icon.svg",
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 2 ? Colors.blue : Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: () => setState(() => selectedIndex = 3),
                child: SvgPicture.asset(
                  "assets/images/person_icon.svg",
                  colorFilter: ColorFilter.mode(
                    selectedIndex == 3 ? Colors.blue : Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
