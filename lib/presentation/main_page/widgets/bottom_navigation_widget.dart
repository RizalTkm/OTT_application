import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

ValueNotifier<int> bottombarindexnotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bottombarindexnotifier,
        builder: (BuildContext context, int newIndex, _) {
          return BottomNavigationBar(
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedIconTheme: IconThemeData(color: Colors.white),
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              currentIndex: newIndex,
              onTap: (value) {
                bottombarindexnotifier.value = value;
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.newspaper), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions_outlined),
                    label: 'Fast Laughs'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download_outlined), label: 'downloads')
              ]);
        });
  }
}
