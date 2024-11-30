import 'package:bloc_pattern/bloc/Bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/screens/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bloc Pattern'),
          titleTextStyle: const TextStyle(fontSize: 25),
          backgroundColor: const Color.fromARGB(255, 209, 98, 246),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => userbloc(),
            ),
          ],
          child: const main_screen(),
        ),
      ),
    );
  }
}
