import 'package:bnu_lms/features/courses/presentation/screens/courses_tab.dart';
import 'package:bnu_lms/features/forums/presentation/screens/messages_tab.dart';
import 'package:bnu_lms/features/home/presentation/screen/home_tab.dart';
import 'package:bnu_lms/features/profile/presentation/screens/profile_tab.dart';
import 'package:bnu_lms/shared/resources/assets_manager.dart';
import 'package:bnu_lms/shared/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> tabs = const [
    HomeTab(),
    CoursesTab(),
    MessagesTab(),
    ProfileTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: ColorsManager.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.headphones),

        
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconsManager.courses)),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconsManager.message)),
            label: 'Forums',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconsManager.profile)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
