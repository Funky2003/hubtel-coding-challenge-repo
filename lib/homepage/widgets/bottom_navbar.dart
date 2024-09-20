import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        iconSize: 35,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        elevation: 15,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.send_to_mobile_rounded, color: Colors.grey),
              label: "Send"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history_edu_rounded, color: Colors.grey),
              label: "History"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Colors.grey),
              label: "Calender")
        ]
    );
  }
}
