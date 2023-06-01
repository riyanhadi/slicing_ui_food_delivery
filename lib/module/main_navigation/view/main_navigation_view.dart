import 'package:flutter/material.dart';
import 'package:slicing_iu_fooddelivery/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    Widget buildNavItem(IconData icon, int index) {
      return GestureDetector(
        onTap: () => controller.updateIndex(index),
        child: Icon(
          icon,
          color: controller.selectedIndex == index
              ? const Color(0xffff4f07)
              : Colors.grey,
        ),
      );
    }

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xffff4f07),
          child: const Icon(Icons.shopping_cart_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: SizedBox(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavItem(Icons.home_outlined, 0),
                buildNavItem(Icons.confirmation_num_outlined, 1),
                const SizedBox(width: 64),
                buildNavItem(Icons.favorite_border, 2),
                buildNavItem(Icons.person_2_outlined, 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
