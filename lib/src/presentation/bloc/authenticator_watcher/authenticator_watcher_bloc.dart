import 'package:bloc_clean_architecture/src/common/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authenticator_watcher_bloc.freezed.dart';
part 'authenticator_watcher_event.dart';
part 'authenticator_watcher_state.dart';

class AuthenticatorWatcherBloc
    extends Bloc<AuthenticatorWatcherEvent, AuthenticatorWatcherState> {
  AuthenticatorWatcherBloc()
      : super(const AuthenticatorWatcherState.initial()) {
    on<AuthenticatorWatcherEvent>((event, emit) async {
      await event.map(
        authCheckRequest: (_) async {
          emit(const AuthenticatorWatcherState.authenticating());
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString(ACCESS_TOKEN);
          final userLastName = prefs.getString(USER_LAST_NAME);
          final userEmail = prefs.getString(USER_EMAIL);
          final showOnbording = prefs.getString(ONBOARDING);

          if (showOnbording == null) {
            prefs.setString(ONBOARDING, ONBOARDING);
            emit(const AuthenticatorWatcherState.isFirstTime());
          } else if (token != null &&
              userLastName != null &&
              userEmail != null) {
            emit(const AuthenticatorWatcherState.authenticated());
          } else {
            emit(const AuthenticatorWatcherState.unauthenticated());
          }
        },
        signOut: (_) async {
          emit(const AuthenticatorWatcherState.authenticating());
          final prefs = await SharedPreferences.getInstance();
          prefs.remove(ACCESS_TOKEN);
          emit(const AuthenticatorWatcherState.unauthenticated());
        },
      );
    });
  }
}
