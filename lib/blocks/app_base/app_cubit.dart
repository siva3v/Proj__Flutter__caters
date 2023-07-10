import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/auth/auth_event.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(AppStates initialState) : super(AppInitial(initialState));

  setAuthEvent(AuthEvent authEvent) { emit(state.copyWith(authEvent: authEvent)); }

  setAppState(AppStates appState) { emit(state.copyWith(appState: appState)); }

}
