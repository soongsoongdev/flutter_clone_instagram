import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/controller/bottom_nav_controller.dart';
import 'package:flutter_clone_instagram/src/pages/home.dart';
import 'package:get/get.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: controller.willPopAction,
        child: Obx(
          () => Scaffold(
            appBar: AppBar(),
            body: IndexedStack(
              index: controller.pageIndex.value,
              children: [
                const Home(),
                Container(
                  child: Center(child: Text("HOME")),
                ),
                Container(
                  child: Center(child: Text("SEARCH")),
                ),
                Container(
                  child: Center(child: Text("UPLOAD")),
                ),
                Container(
                  child: Center(child: Text("ACTIVITY")),
                ),
                Container(
                  child: Center(child: Text("MY PAGE")),
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: controller.pageIndex.value,
                elevation: 0,
                onTap: controller.changeBottomNav,
                items: [
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined),
                      activeIcon: Icon(Icons.home_filled),
                      label: "Home"),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.search_outlined),
                      activeIcon: Icon(Icons.search),
                      label: "Home"),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.add_box_outlined), label: "Home"),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border_outlined),
                      activeIcon: Icon(Icons.favorite),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      label: "Home"),
                ]),
          ),
        ));
  }
}
