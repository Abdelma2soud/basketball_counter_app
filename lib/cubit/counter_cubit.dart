import 'package:basketball_counter_app1/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(InitailState());
  int counterA = 0;
  int counterB = 0;
  void incrementCounter({required String group, required int buttonNum}) {
    if (group == 'A') {
      counterA += buttonNum;
      emit(CounterAstate());
    } else {
      counterB += buttonNum;
      emit(CounterBstate());
    }
  }
}
