import 'package:flutter/material.dart';
import 'package:upwards_digital/screen_details/app_drawer.dart';
import 'package:upwards_digital/screen_details/user_header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(isTablet ? 80 : 56),
        child: UserHeader(isTablet: isTablet),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Center(child: Text('Основной контент')),
            ),
          ),
        ],
      ),
    );
  }
}
