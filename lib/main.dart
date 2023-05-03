import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider()..loadNextPage()),
      ],
      child: MaterialApp(
          title: 'TokTik',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.light,
              useMaterial3: true,
              colorSchemeSeed: Colors.blue),
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              useMaterial3: true,
              colorSchemeSeed: Colors.purpleAccent),
          home: const DiscoverScreen()),
    );
  }
}
