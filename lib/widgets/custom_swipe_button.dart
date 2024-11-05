import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class CustomSwipeButton extends StatelessWidget {
  const CustomSwipeButton({
    super.key,
    required this.onWaitingProcess,
    required this.onFinish,
    required this.isFinished,
    required this.isDarkTheme,
  });
  final void Function() onWaitingProcess;
  final void Function() onFinish;
  final bool isFinished;
  final bool isDarkTheme;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SwipeableButtonView(
        buttonText: 'Calculate',
        buttontextstyle: TextStyle(
          color: isDarkTheme ? Colors.black : Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        isFinished: isFinished,
        disableColor: isDarkTheme ? Colors.blue : Colors.grey,
        buttonWidget: Icon(
          Icons.arrow_forward_ios_rounded,
          color: isDarkTheme ? Colors.white : Colors.grey,
        ),
        buttonColor:
            isDarkTheme ? Theme.of(context).primaryColor : Colors.white,
        activeColor:
            isDarkTheme ? Colors.grey[300]! : Theme.of(context).primaryColor,
        onWaitingProcess: onWaitingProcess,
        onFinish: onFinish,
      ),
    );
  }
}
