import 'package:cubittask/cubit/cubit_task/task_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../splash_screen/splash_screen.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TaskCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.yellow,
          buttonColor: Colors.blue,
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            )
          )
        ),
        home: SplashScreen(

        ),
      ),
    );
  }
}