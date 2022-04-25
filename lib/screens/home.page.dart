import 'package:cubit_test_manager/cubit/exchange.cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _ctrEuro = TextEditingController();
    ExchangeCubit exchangeCubit = context.read<ExchangeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('App Concersion'),
      ),
      body: Container(
        margin: EdgeInsets.all(7),
        child: Column(
          children: [
            TextField(
              controller: _ctrEuro,
              style: TextStyle(fontSize: 22, color: Colors.cyan),
              decoration: InputDecoration(
                labelText: "Montant en Euro",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  exchangeCubit.emit(double.parse(_ctrEuro.text));
                  exchangeCubit.toMad();
                },
                    child: Text('MAD'),),
                ElevatedButton(onPressed: (){
                  exchangeCubit.emit(double.parse(_ctrEuro.text));
                  exchangeCubit.toUSD();
                },
                  child: Text('USD'),),
                ElevatedButton(onPressed: (){
                  exchangeCubit.emit(double.parse(_ctrEuro.text));
                  exchangeCubit.toBTC();
                },
                  child: Text('BTC'),),
              ],
            ),
            SizedBox(height: 50,),
            BlocBuilder<ExchangeCubit,double>(builder: (context, state) {
              return Text(state.toStringAsFixed(4), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),);
            },),
          ],
        ),
      ),
    );
  }
}
