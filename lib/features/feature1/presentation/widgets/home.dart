
import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.isInitialLoadingFinished,
    required this.currentNumber,
  });

  final bool isInitialLoadingFinished;
  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          HomeButton(
            iconData: Icons.exposure_minus_1,
            function: () {
              BlocProvider.of<HomeBloc>(context).add(
                HomeEventMyPageButtonClicked(),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
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
          if (isInitialLoadingFinished)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeButton(
                  iconData: Icons.add,
                  function: () {
                    BlocProvider.of<HomeBloc>(context).add(
                      HomeEventAddButtonClicked(currentNumber),
                    );
                  },
                ),
                HomeButton(
                  iconData: Icons.exposure_minus_1,
                  function: () {
                    BlocProvider.of<HomeBloc>(context).add(
                      HomeEventSubtractButtonClicked(currentNumber),
                    );
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}
