import 'dart:developer' as developer;

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../calendar/widgets/calendar_page.dart';
import '../../core/core.dart';
import '../../info/widgets/info_page.dart';
import '../../services/widgets/services_page.dart';
import '../../user/widgets/profile_page.dart';
import 'exit_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.selectedTap = 0});

  final int selectedTap;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int selected;
  final controller = PageController();

  Future<bool> homeInterceptor(
      bool stopDefaultButtonEvent, RouteInfo info) async {
    developer.log('homeInterceptor: $stopDefaultButtonEvent');
    if (stopDefaultButtonEvent) return false;

    if (selected != 0) {
      controller.animateToPage(0,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      setState(() {
        selected = 0;
      });
    } else {
      bool? result = await showDialog<bool>(
        context: context,
        builder: (_) => const ExitDialog(),
      );
      return result ?? false;
    }
    return true;
  }

  @override
  void initState() {
    selected = widget.selectedTap;
    BackButtonInterceptor.add(homeInterceptor);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    BackButtonInterceptor.remove(homeInterceptor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //to make floating action button notch transparent
      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.blink,
          inkEffect: true,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.home_outlined,
            ),
            selectedIcon: const Icon(Icons.home),
            selectedColor: AppColors.main,
            unSelectedColor: Colors.grey,
            title: const Text('Home', style: TextStyle(fontSize: 12)),
          ),
          BottomBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.spa_outlined),
            ),
            selectedIcon: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.spa),
            ),
            selectedColor: AppColors.main,
            title: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text('Servicios', style: TextStyle(fontSize: 12)),
            ),
          ),
          BottomBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.calendar_month_outlined),
            ),
            selectedIcon: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.calendar_month),
            ),
            selectedColor: AppColors.main,
            title: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text('Citas', style: TextStyle(fontSize: 12)),
            ),
          ),
          BottomBarItem(
              icon: const Icon(Icons.person_outline),
              selectedIcon: const Icon(Icons.person),
              selectedColor: AppColors.main,
              title: const Text('Perfil', style: TextStyle(fontSize: 12))),
        ],
        // hasNotch: true,
        // fabLocation: StylishBarFabLocation.center,
        currentIndex: selected,
        // notchStyle: NotchStyle.circle,
        onTap: (index) {
          if (index == selected) return;
          controller.animateToPage(index,
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
          setState(() {
            selected = index;
          });
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   shape: const CircleBorder(),
      //   backgroundColor: AppColors.main,
      //   child: const Icon(
      //     Icons.qr_code_scanner_outlined,
      //     color: Colors.white,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: AppColors.main),
        child: SafeArea(
          child: PageView(
            controller: controller,
            children: [
              const InfoPage(),
              const ServicesPage(),
              const CalendarPage(),
              const ProfilePage(),
            ],
            onPageChanged: (index) {
              setState(() {
                selected = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
