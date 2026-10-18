
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/screens/tabs.dart';

final theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF6F1E7),
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color(0xFF4F6B3A),
    primary: const Color(0xFF4F6B3A),
    onPrimary: Colors.white,
    secondary: const Color(0xFFB66A4E),
    onSecondary: Colors.white,
    surface: const Color(0xFFFFFDF8),
    onSurface: const Color(0xFF22271C),
  ),
  textTheme: GoogleFonts.latoTextTheme().apply(
    bodyColor: const Color(0xFF22271C),
    displayColor: const Color(0xFF22271C),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF6F1E7),
    foregroundColor: Color(0xFF22271C),
    elevation: 0,
    centerTitle: false,
  ),
  cardTheme: const CardThemeData(
    color: Color(0xFFFFFDF8),
    elevation: 1,
    margin: EdgeInsets.zero,
  ),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Color(0xFFFFFDF8),
    indicatorColor: Color(0xFFDDE5D3),
    elevation: 0,
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF4F6B3A);
      }
      return null;
    }),
  ),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
