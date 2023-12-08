
import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Second extends StatelessWidget {
  const Second({
    super.key,
    required this.isInitialLoadingFinished,
    required this.currentNumber,
  });

  final bool isInitialLoadingFinished;
  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!isInitialLoadingFinished)
            const Center(
              child: Text(
                'loading....',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          if (isInitialLoadingFinished)
            Text(
              '$currentNumber',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
        ],
      ),
    );
  }
}
