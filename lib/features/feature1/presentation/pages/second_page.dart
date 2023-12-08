import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SecondBloc>(context).add(SecondEventStarted());
    return BlocConsumer<SecondBloc, SecondState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Second(
          isInitialLoadingFinished: state.isInitialLoadingFinished,
          currentNumber: state.currentNumber ?? 0,
        );
      },
    );
  }
}
