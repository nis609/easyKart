// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../../app_state/appstate.dart';
//
// class GoogleSignInController extends StateNotifier<AppState> {
//   GoogleSignInController() : super(AppState.initial());
//   final googleSignIn = GoogleSignIn();
//
//   GoogleSignInAccount? _user;
//   GoogleSignInAccount get user => _user!;
//
//   Future googleLogin() async {
//     state = AppState.loading();
//     try {
//       final googleUser = await googleSignIn.signIn();
//       print(googleUser!.displayName.toString());
//       print("asdhvh");
//       _user = googleUser;
//       if (_user != null) {
//         state = AppState.data(_user);
//       } else {
//           state = AppState.error("Cant't get email or Password ");
//       }
//     } catch (e) {
//       state = AppState.error(e);
//     }
//   }
// }
