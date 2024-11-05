String getBMIInterpretation(double bmi) {
  if (bmi >= 30) {
    return 'You have a very high body weight. You should see a doctor.';
  } else if (bmi >= 25) {
    return 'You have a higher than normal body weight. Try to exercise more.';
  } else if (bmi >= 18.5) {
    return 'You have a normal body weight. Good job!';
  } else {
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
