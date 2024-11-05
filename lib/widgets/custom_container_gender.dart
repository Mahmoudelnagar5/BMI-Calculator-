import 'package:flutter/material.dart';

class CustomContainerGender extends StatelessWidget {
  const CustomContainerGender({
    super.key,
    this.icon,
    required this.text,
    this.onTap,
    required this.isSelected,
    required this.isDarkMode,
  });
  final IconData? icon;
  final String text;
  final void Function()? onTap;
  final bool isSelected;
  final bool isDarkMode;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isDarkMode
              ? (isSelected ? Colors.white : Colors.grey)
              : (isSelected ? const Color(0xff246AFE) : Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                icon,
                size: 24,
                color: isDarkMode
                    ? isSelected
                        ? const Color(0xff246AFE)
                        : const Color.fromARGB(255, 65, 65, 65)
                    : (isSelected ? Colors.white : const Color(0xff246AFE)),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: isDarkMode
                    ? (isSelected
                        ? const Color(0xff246AFE)
                        : const Color.fromARGB(255, 65, 65, 65))
                    : (isSelected ? Colors.white : const Color(0xff246AFE)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
