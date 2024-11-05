import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomControl extends StatelessWidget {
  final String label;
  final int value;
  final Function(int) onChanged;
  final bool isDarkMode;

  const CustomControl({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xff373737) : Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '$value',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  onPressed: () {
                    if (value > 0) onChanged(value - 1);
                  },
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xff246AFE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () => onChanged(value + 1),
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xff246AFE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
