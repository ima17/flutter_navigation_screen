import 'package:flutter/material.dart';
import 'package:flutter_navigation_screen/screens/navigation_screen.dart';
import 'package:flutter_navigation_screen/widgets/button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: const ButtonWidget()),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NavigationScreen(
                          index: 1,
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
