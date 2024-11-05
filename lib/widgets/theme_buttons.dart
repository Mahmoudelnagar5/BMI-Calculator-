import 'package:flutter/material.dart';

import '../provider/theme_provider.dart';

class ThemeButtons extends StatelessWidget {
  const ThemeButtons({
    super.key,
    required this.isDarkTheme,
    required this.themeProvider,
  });

  final bool isDarkTheme;
  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        color: isDarkTheme ? const Color(0xff373737) : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => themeProvider.toggleTheme(false),
            icon: Icon(
              Icons.light_mode,
              color: isDarkTheme ? Colors.grey : Theme.of(context).primaryColor,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => themeProvider.toggleTheme(true),
            icon: Icon(
              Icons.dark_mode,
              color: isDarkTheme ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
