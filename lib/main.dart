import 'package:flip_animation/widgets/bank_card/bank_card_back_widget.dart';
import 'package:flip_animation/widgets/bank_card/bank_card_front_widget.dart';
import 'package:flip_animation/widgets/flip_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flip Widget Animation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlipWidget(
              size: Size(320, 200),
              front: BankCardWidget(),
              back: BankCardBackWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
