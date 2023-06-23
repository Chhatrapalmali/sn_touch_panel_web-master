import 'package:flutter/material.dart';

import '../../helper/responsive_layout.dart';

// List<String> _buttonNames = ["Overview", "Revenue", "Sales", "Control"];
// int _currentSelectedButton = 0;

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (ResponsiveLayout.isDesktop(context))
          Container(
            margin: const EdgeInsets.all(10),
            height: double.infinity,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                  blurRadius: 2,
                )
              ],
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              radius: 25,
              child: Image.asset(
                "assets/images/sn_logo.png",
                height: 25,
                width: 25,
              ),
            ),
          )
        else
          IconButton(
            color: Theme.of(context).colorScheme.onPrimary,
            iconSize: 30,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        const SizedBox(width: 10),
        if (ResponsiveLayout.isDesktop(context))
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              "Smart Node",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText2!.color,
                // fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 0.5,
              ),
            ),
          ),
        // const Spacer(),
        const SizedBox(width: 20),
      ],
    );
  }
}
