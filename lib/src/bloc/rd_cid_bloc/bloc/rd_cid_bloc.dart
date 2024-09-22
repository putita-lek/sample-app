import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'rd_cid_event.dart';
part 'rd_cid_state.dart';

class RdCidBloc extends Bloc<RdCidEvent, RdCidState> {
  RdCidBloc() : super(RdCidInitial()) {
    on<RdCidEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
