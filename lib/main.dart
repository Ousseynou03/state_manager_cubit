import 'package:cubit_test_manager/cubit/exchange.cubit.dart';
import 'package:cubit_test_manager/screens/home.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: 
        [
          BlocProvider(create: (context)=>ExchangeCubit())
        ], 
        child: MaterialApp(
          routes: {
            '/':(context)=>HomePage(),
          },
        ));
  }
}
