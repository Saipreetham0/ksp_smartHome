import 'package:flutter/material.dart';
import 'package:ksp_smarthome/constants/colors.dart';
import 'package:ksp_smarthome/features/core/screens/homeScree/home_screen.dart';
import 'package:ksp_smarthome/features/core/screens/settings/settings.dart';

class navBarScreen extends StatefulWidget {
  const navBarScreen({super.key});

  @override
  State<navBarScreen> createState() => _navBarScreenState();
}

int _selectedIndex = 0;
int navBarCurrentTab = 0;

class _navBarScreenState extends State<navBarScreen> {
  final List<Widget> _pages = [
    const homeScreen(),
    const homeScreen(),
    const homeScreen(),
    const settingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _pages[navBarCurrentTab],
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tPrimaryColor,
            child: const Icon(
              Icons.add,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color:
                          navBarCurrentTab == 0 ? tPrimaryColor : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        navBarCurrentTab = 0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mic,
                      color:
                          navBarCurrentTab == 1 ? tPrimaryColor : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        navBarCurrentTab = 1;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.auto_graph_outlined,
                      color:
                          navBarCurrentTab == 2 ? tPrimaryColor : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        navBarCurrentTab = 2;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color:
                          navBarCurrentTab == 3 ? tPrimaryColor : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        navBarCurrentTab = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
