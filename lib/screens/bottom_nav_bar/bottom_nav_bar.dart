import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  List screens = const [
    RedScreen(),
    BlackScreen(),
    BlueScreen(),
    WhiteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: const Color(0xFF1E1E1E),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  currentIndex == 0
                      ? SvgPicture.asset('assets/icons/home.svg')
                      : SvgPicture.asset('assets/icons/home_unselected.svg'),
                  const SizedBox(
                    height: 6,
                  ),
                  if (currentIndex == 0) ...{
                    SvgPicture.asset('assets/icons/focus.svg'),
                  }
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  currentIndex == 1
                      ? SvgPicture.asset('assets/icons/wallet.svg')
                      : SvgPicture.asset('assets/icons/wallet_unselected.svg'),
                  const SizedBox(
                    height: 6,
                  ),
                  if (currentIndex == 1) ...{
                    SvgPicture.asset('assets/icons/focus.svg'),
                  }
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  currentIndex == 2
                      ? SvgPicture.asset('assets/icons/analysis.svg')
                      : SvgPicture.asset(
                          'assets/icons/analysis_unselected.svg'),
                  const SizedBox(
                    height: 6,
                  ),
                  if (currentIndex == 2) ...{
                    SvgPicture.asset('assets/icons/focus.svg'),
                  }
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  currentIndex == 3
                      ? SvgPicture.asset('assets/icons/use.svg')
                      : SvgPicture.asset('assets/icons/user_unselected.svg'),
                  const SizedBox(
                    height: 6,
                  ),
                  if (currentIndex == 3) ...{
                    SvgPicture.asset('assets/icons/focus.svg'),
                  }
                ],
              ),
              label: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}

class BlackScreen extends StatelessWidget {
  const BlackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    );
  }
}

class BlueScreen extends StatelessWidget {
  const BlueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    );
  }
}

class WhiteScreen extends StatelessWidget {
  const WhiteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
    );
  }
}

class RedScreen extends StatelessWidget {
  const RedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    );
  }
}
