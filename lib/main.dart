import 'package:flutter/material.dart';

void main() {
  runApp(const DoNothingApp());
}

class DoNothingApp extends StatelessWidget {
  const DoNothingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Do Nothing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const DoNothingPage(),
    );
  }
}

class DoNothingPage extends StatelessWidget {
  const DoNothingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Do Nothing')),
      body: Center(
        child: FilledButton(onPressed: () {}, child: const Text('Do nothing')),
      ),
    );
  }
}
