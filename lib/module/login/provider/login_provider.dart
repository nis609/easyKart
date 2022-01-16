import 'package:ecoomerce_app/app_state/appstate.dart';
import 'package:ecoomerce_app/module/login/controller/login_controller.dart';
import 'package:ecoomerce_app/module/login/repository/repository.dart';
import 'package:hooks_riverpod/all.dart';

final loginStateNotifier =
StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});