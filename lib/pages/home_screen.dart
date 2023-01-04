import 'package:flutter/material.dart';
import 'package:wmo_hostel_attendence/view/history_view.dart';
import 'package:wmo_hostel_attendence/view/home_view.dart';
import 'package:wmo_hostel_attendence/view/profile_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.calendar_month,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(
                Icons.account_box,
              ),
            ),
            BottomNavigationBarItem(
              label: "History",
              icon: Icon(
                Icons.history,
              ),
            )
          ],
        ),
        body: bodyList[currentIndex]);
  }
}

List<Widget> bodyList = const [
  //body1
  HomeView(),

  //body2
  ProfileView(),

  //body3
  HistoryView()
];
