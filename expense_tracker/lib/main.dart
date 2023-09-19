import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main(){
  runApp(
    MaterialApp(
      // With copyWith we over write some parameters that we want to
      theme: ThemeData().copyWith(
        useMaterial3: true,
        // scaffoldBackgroundColor: Color.fromARGB(255, 220, 189, 252),
      ),
      home: Expenses(),
    )
  );
}