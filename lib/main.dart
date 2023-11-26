// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/ui/screens/category_screen.dart';
import 'package:flutter_divar_application/ui/screens/home_screen.dart';
import 'package:flutter_divar_application/ui/screens/profile_screen.dart';
import 'package:flutter_divar_application/ui/screens/set_location_screen.dart';
import 'ui/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(
      //   useMaterial3:
      // ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedBottomNavigationIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedBottomNavigationIndex,
        children: getScreens(),
      ),
      bottomNavigationBar: ClipRRect(
        child: Container(
          padding: EdgeInsets.only(bottom: 8),
          height: 65,
          child: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedBottomNavigationIndex = index;
              });
            },
            currentIndex: selectedBottomNavigationIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: CustomColor.redcolor,
            unselectedItemColor: CustomColor.greyText,
            selectedLabelStyle: TextStyle(
              fontFamily: 'SB',
              fontSize: 14,
            ),
            unselectedLabelStyle: const TextStyle(
              fontFamily: 'SB',
              fontSize: 14,
            ),
            items: [
              BottomNavigationBarItem(
                label: 'آویز من',
                icon: Image.asset('assets/images/icon_profile.png'),
                activeIcon: Image.asset(
                  'assets/images/icon_profile.png',
                  color: CustomColor.redcolor,
                ),
              ),
              BottomNavigationBarItem(
                label: 'افزودن آویز',
                icon: Image.asset('assets/images/icon_add-circle.png'),
                activeIcon: Image.asset(
                  'assets/images/icon_add-circle.png',
                  color: CustomColor.redcolor,
                ),
              ),
              BottomNavigationBarItem(
                label: 'جستجو',
                icon: Image.asset('assets/images/icon_search.png'),
                activeIcon: Image.asset(
                  'assets/images/icon_search.png',
                  color: CustomColor.redcolor,
                ),
              ),
              BottomNavigationBarItem(
                label: 'آویز آگهی ها',
                icon: Image.asset('assets/images/icon_aviz.png'),
                activeIcon: Image.asset(
                  'assets/images/icon_aviz.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> getScreens() {
  return <Widget>[
    ProfileScreen(),
    CategoryScreen(),
    SetLocationScreen(),
    HomeScreen(),
  ];
}
