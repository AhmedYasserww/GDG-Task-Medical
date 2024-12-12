import 'package:flutter/material.dart';
import 'package:gdg_task_medical/features/home/presentation/views/home_view.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedIndex = 0;

  List<Widget> views = [
    HomeView(),
    Container(child: Text("Cart"),),
    Container(child: Text("Favorite"),),
    Container(child: Text("Profile"),),
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
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: selectedIndex == 0 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => selectedIndex = 0),
              ),
            ),
            Expanded(
              flex: 3,
              child: IconButton(
                icon: Icon(
                  Icons.add_alert_rounded,
                  color: selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => selectedIndex = 1),
              ),
            ),
            const Spacer(flex: 3), // Large space between icons
            Expanded(
              flex: 3,
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: selectedIndex == 2 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => selectedIndex = 2),
              ),
            ),
            Expanded(
              flex: 3,
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: selectedIndex == 3 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => setState(() => selectedIndex = 3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
