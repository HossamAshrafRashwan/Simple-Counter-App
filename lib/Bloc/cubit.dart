import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/Bloc/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  final context;

  CounterCubit(this.context) : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;

  void minus() {
    counter--;

    emit(CounterMinusState());
  }

  void plus() {
    counter++;

    emit(CounterPlusState());
  }

  void reset() {
    counter = 0;

    emit(CounterResetState());
  }
}
