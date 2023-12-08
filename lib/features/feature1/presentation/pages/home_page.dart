import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(HomeEventStarted());
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.eventType.isMyPageButtonClicked &&
            state.status.isSuccess) {
          print('이동하자!!!!');
          Navigator.pushNamed(context, '/second');
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => const SecondPage()));
        }
      },
      builder: (context, state) {
        return Home(
          isInitialLoadingFinished: state.isInitialLoadingFinished,
          currentNumber: state.currentNumber ?? 0,
        );
      },
    );
  }
}
