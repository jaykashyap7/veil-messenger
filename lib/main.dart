import 'package:flutter/material.dart';
import 'src/veil_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const VeilApp());
}

class VeilApp extends StatelessWidget {
  const VeilApp({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFF111311);
    const panel = Color(0xFF1A1D19);
    const accent = Color(0xFFC8F169);

    return MaterialApp(
      title: 'VEIL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: background,
        colorScheme: const ColorScheme.dark(
          primary: accent,
          secondary: accent,
          surface: panel,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: background,
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
        cardTheme: CardThemeData(
          color: panel,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: const BorderSide(color: Color(0xFF2A2E28)),
          ),
        ),
      ),
      home: const VeilHome(),
    );
  }
}
