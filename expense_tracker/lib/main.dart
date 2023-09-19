import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

void main(){
  runApp(
    MaterialApp(
      // With copyWith we over write some parameters that we want to
      theme: ThemeData().copyWith(
        useMaterial3: true,
        // scaffoldBackgroundColor: const Color.fromARGB(255, 220, 189, 252),
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer
        )
      ),
      home: const Expenses(),
    )
  );
}