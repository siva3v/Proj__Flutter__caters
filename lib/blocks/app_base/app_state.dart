part of 'app_cubit.dart';

enum AppStates { loading, credentials, pin, home }

class AppState {
  final AppStates appState;
  final AuthEvent authEvent;

  const AppState({
    required this.appState,
    required this.authEvent,
  });

  AppState copyWith({
    AppStates? appState,
    AuthEvent? authEvent,
    bool? spinner
  }) {
    return AppState(
        authEvent: authEvent ?? this.authEvent,
        appState: appState ?? this.appState
    );
  }
}

class AppInitial extends AppState {
  @override
  AppInitial(AppStates initialState) : super(
      authEvent: AuthEvent.loading,
      appState: initialState
  );
}
