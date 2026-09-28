import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

const kCream = Color(0xFFF7F1E7);
const kWarmBeige = Color(0xFFE8D8C4);
const kMaroon = Color(0xFF6B1E2B);
const kDeepMaroon = Color(0xFF4A1420);
const kBurgundy = Color(0xFF8A3948);
const kDarkBrown = Color(0xFF3B2925);
const kWarmGray = Color(0xFF756A65);
const kChampagneGold = Color(0xFFC9A66B);

final kColorScheme = ColorScheme.fromSeed(
  seedColor: kMaroon,
  brightness: Brightness.light,
);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: kCream,

        appBarTheme: const AppBarTheme(
          backgroundColor: kDeepMaroon,
          foregroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
        ),

        cardTheme: const CardThemeData(
          color: kWarmBeige,
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          elevation: 2,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kMaroon,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: kMaroon,
          ),
        ),

        iconTheme: const IconThemeData(
          color: kMaroon,
        ),

        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kMaroon,
              width: 2,
            ),
          ),
          floatingLabelStyle: TextStyle(
            color: kMaroon,
          ),
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.w600,
            color: kDarkBrown,
            fontSize: 16,
          ),
        ),
      ),
      home: const Expenses(),
    ),
  );
}