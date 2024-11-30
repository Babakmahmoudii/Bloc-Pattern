// ignore: file_names
import 'package:bloc/bloc.dart';
import 'package:bloc_pattern/bloc/event.dart';
import 'package:bloc_pattern/bloc/state.dart';

class userbloc extends Bloc<userevent, Userstate> {
  userbloc() : super(Userstate([])) {
    on<Adduser>(
      (event, emit) {
        state.users.add(event.name);
        return emit(Userstate(state.users));
      },
    );
    on<Removeuser>(
      (event, emit) {
        state.users.removeWhere((element) => element.contains(event.name));
        return emit(Userstate(state.users));
      },
    );
    on<Clearuser>(
      (event, emit) {},
    );
  }
}
