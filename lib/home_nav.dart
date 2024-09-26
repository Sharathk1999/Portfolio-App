import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/views/home_screen.dart';
import 'package:portfolio_app/views/input_screen.dart';
import 'package:portfolio_app/views/portfolio_screen.dart';
import 'package:portfolio_app/views/profile_screen.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _selectedIndex = 0;

  List screens = const [
    HomeScreen(),
    PortfolioPage(),
    InputScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedItemColor: const Color(0xFFDF5532),
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(fontFamily: "Roboto"),
      unselectedLabelStyle: const TextStyle(fontFamily: "Roboto"),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        _buildBottomNavigationBarItem("assets/svg/home.svg", "Home", 0),
        _buildBottomNavigationBarItem(
            "assets/svg/portfolio.svg", "Portfolio", 1),
        _buildBottomNavigationBarItem("assets/svg/input.svg", "Input", 2),
        _buildBottomNavigationBarItem("assets/svg/profile.svg", "Profile", 3),
      ],
    );
  }

  //BottomNavigationBarItem with a line indicator
  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String svgPath, String label, int index) {
    return BottomNavigationBarItem(
      icon: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_selectedIndex == index)
                Container(
                  width: 30.w,
                  height: 3.h,
                  color: const Color(0xFFDF5532), // Line color
                  margin: EdgeInsets.only(bottom: 2.h),
                ),
              SvgPicture.asset(
                svgPath,
                width: 24.sp,
                height: 24.sp,
                // ignore: deprecated_member_use
                color: _selectedIndex == index
                    ? const Color(0xFFDF5532)
                    : const Color(0xFFD6D1D5),
              )
            ],
          ),
        ],
      ),
      label: label,
      
    );
  }
}
