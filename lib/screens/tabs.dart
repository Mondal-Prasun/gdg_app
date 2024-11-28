import 'package:flutter/material.dart';
import 'package:gdg_app/screens/contactus_screen.dart';
import 'package:gdg_app/screens/home_screen.dart';
import 'package:gdg_app/screens/scheduel_screen.dart';
import 'package:gdg_app/screens/speaker_screen.dart';
import 'package:gdg_app/screens/teams_screen.dart';
import 'package:gdg_app/widgets/drawer_widget.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int bottomNavigationBarIndex = 0;
  Widget currentScreen = const HomeScreen();

  void changeScreen(int index) {
    setState(() {
      bottomNavigationBarIndex = index;
    });
    switch (index) {
      case 0:
        bottomNavigationBarIndex = 0;
        currentScreen = const HomeScreen();
        break;
      case 1:
        bottomNavigationBarIndex = 1;
        currentScreen = const ScheduleScreen();
        break;
      case 2:
        bottomNavigationBarIndex = 2;
        currentScreen = const SpeakerScreen();
        break;
      case 3:
        bottomNavigationBarIndex = 3;
        currentScreen = const TeamsScreen();

        break;
      case 4:
        bottomNavigationBarIndex = 4;
        currentScreen = const ContactusScreen();
        break;

      default:
        bottomNavigationBarIndex = 0;
        currentScreen = const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          height: 30,
          width: 100,
          fit: BoxFit.contain,
          'lib/assets/gdg_logo.png',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        onTap: changeScreen,
        currentIndex: bottomNavigationBarIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Spekers",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: "Team",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_support_outlined),
            label: "Crontact us",
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: currentScreen,
    );
  }
}
