import 'package:bloc/bloc.dart';

import '../repositories/exchange.reposirories.dart';

class ExchangeCubit extends Cubit<double>{
  ExchangeCubit() : super(0);

  var rate = Rate();
  void toMad(){
    print(state);
    emit(state*rate.rates['MAD']!);
  }
  void toUSD(){
    print(state);
    emit(state*rate.rates['USD']!);
  }
  void toBTC(){
    print(state);
    emit(state*rate.rates['BTC']!);
  }
}