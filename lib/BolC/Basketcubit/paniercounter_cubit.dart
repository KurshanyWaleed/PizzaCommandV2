import 'package:bloc/bloc.dart';

part 'paniercounter_state.dart';

class PaniercounterCubit extends Cubit<int> {
  PaniercounterCubit() : super((1));

  void inc() {
    emit(state + 1);
  }

  void dnc() {
    state <= 1 ? emit(1) : emit(state - 1);
  }

  void reset() {
    emit(1);
  }
}
