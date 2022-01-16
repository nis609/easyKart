import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../app_state/appstate.dart';
import '../controller/home_controller.dart';

import '../repository/home_repository.dart';

final cartProviderGlobal = StateNotifierProvider<HomeController, AppState>((ref) {
  return HomeController(ref.watch(HomeProvider));
});
