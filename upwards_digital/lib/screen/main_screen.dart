import 'package:flutter/material.dart';
import 'package:upwards_digital/core/app_colors.dart';
import 'package:upwards_digital/main_screen_details/app_drawer.dart';
import 'package:upwards_digital/main_screen_details/user_header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(isTablet ? 80 : 56),
        child: UserHeader(isTablet: isTablet),
      ),
      body: Center(
        child: Text(
          'Главная страница. \nНажмите на меню слева для навигации.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
