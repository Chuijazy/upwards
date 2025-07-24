import 'package:flutter/material.dart';
import 'package:upwards_digital/core/app_colors.dart';

class UserHeader extends StatelessWidget {
  final bool isTablet;
  const UserHeader({super.key, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    final double height = isTablet ? 80 : 56;

    return Container(
      height: height,
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isTablet ? 32 : 16,
            vertical: isTablet ? 8 : 0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  size: isTablet ? 32 : 24,
                  color: Colors.black87,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              SizedBox(width: isTablet ? 16 : 12),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Александр Прокофьев',
                          style: TextStyle(
                            fontSize: isTablet ? 20 : 16,
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Супер Админ',
                          style: TextStyle(
                            fontSize: isTablet ? 16 : 14,
                            color: AppColors.secondaryTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: isTablet ? 16 : 12),
                    CircleAvatar(
                      radius: isTablet ? 30 : 24,
                      backgroundColor: AppColors.green,
                      child: Text(
                        'AU',
                        style: TextStyle(
                          fontSize: isTablet ? 20 : 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
