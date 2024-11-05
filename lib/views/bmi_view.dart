import 'package:bmi/views/result_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import '../utils/functions/calc_bmi.dart';
import '../widgets/custom_container_gender.dart';
import '../widgets/custom_control.dart';
import '../widgets/custom_swipe_button.dart';
import '../widgets/height_slider.dart';
import '../widgets/theme_buttons.dart';

class BMIView extends StatefulWidget {
  const BMIView({super.key});

  @override
  State<BMIView> createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  double heightVal = 150;
  int weight = 55;
  int age = 18;
  bool isMale = true;
  bool _isFinished = false;
  double bmiScore = 0;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkTheme = themeProvider.themeMode == ThemeMode.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Center(
                child: ThemeButtons(
                  isDarkTheme: isDarkTheme,
                  themeProvider: themeProvider,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Welcome 😊",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const Text(
                "BMI Calculator",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: CustomContainerGender(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      isDarkMode: isDarkTheme,
                      icon: Icons.male,
                      text: "Male",
                      isSelected: isMale,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomContainerGender(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      isDarkMode: isDarkTheme,
                      isSelected: !isMale,
                      icon: Icons.female,
                      text: "Female",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: HeightSlider(
                        heightVal: heightVal,
                        onHeightChanged: (newHeight) {
                          setState(() {
                            heightVal = newHeight;
                          });
                        },
                        isDarkTheme: isDarkTheme,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: CustomControl(
                              label: 'Weight',
                              value: weight,
                              onChanged: (newWeight) {
                                setState(() {
                                  weight = newWeight;
                                });
                              },
                              isDarkMode: isDarkTheme,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: CustomControl(
                              label: 'Age',
                              value: age,
                              onChanged: (newAge) {
                                setState(() {
                                  age = newAge;
                                });
                              },
                              isDarkMode: isDarkTheme,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomSwipeButton(
                isFinished: _isFinished,
                onWaitingProcess: () {
                  Future.delayed(const Duration(seconds: 1), () {
                    setState(() {
                      _isFinished = true;
                    });
                  });
                },
                onFinish: () {
                  bmiScore = calculateBMI(heightVal, weight);
                  Navigator.push(
                    context,
                    PageTransition(
                      child: ResultView(
                        bmiScore: bmiScore,
                      ),
                      type: PageTransitionType.fade,
                    ),
                  );
                  setState(() {
                    _isFinished = false;
                  });
                },
                isDarkTheme: isDarkTheme,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
