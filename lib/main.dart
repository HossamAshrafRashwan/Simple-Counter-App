import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/Bloc/cubit.dart';
import 'Bloc/blocopserver.dart';
import 'Screens/mainscreen.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.lightGreenAccent,
      statusBarColor: Colors.lightGreenAccent,
    ),
  );

  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (BuildContext context) => CounterCubit(context),
        child: Hossam(),
        ),
    );
  }
}
