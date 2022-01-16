import 'package:ecoomerce_app/config/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
// import 'package:khalti_flutter_example/app_preference.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'module/dashboard_screen/dashboard_screen.dart';
import 'module/login/views/login_phone.dart';



const String testPublicKey = 'test_public_key_dc74e0fd57cb46cd93832aee0a507256';

Future<void> myBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // return MyAppState()._showNotification(message);
}
void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(myBackgroundHandler);
  WidgetsFlutterBinding.ensureInitialized();

  setup();
  final directory = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(directory.path);
  await Hive.openBox('mailobox');
  runApp(ProviderScope(

    child: MaterialApp(home:  DashboardScreen()),
  ));

}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: DashboardScreen(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return KhaltiScope(
    //   publicKey: "testPublicKey",
    //   enabledDebugging: true,
    //   builder: (context, navKey) {
    //     return ChangeNotifierProvider<AppPreferenceNotifier>(
    //       create: (_) => AppPreferenceNotifier(),
    //       builder: (context, _) {
    //         return Consumer<AppPreferenceNotifier>(
    //           builder: (context, appPreference, _) {
    //             return MaterialApp(
    //               title: 'Khalti Payment Gateway',
    //               supportedLocales: const [
    //                 Locale('en', 'US'),
    //                 Locale('ne', 'NP'),
    //               ],
    //               locale: appPreference.locale,
    //               theme: ThemeData(
    //                 brightness: appPreference.brightness,
    //                 primarySwatch: Colors.deepPurple,
    //                 pageTransitionsTheme: const PageTransitionsTheme(
    //                   builders: {
    //                     TargetPlatform.android: ZoomPageTransitionsBuilder(),
    //                   },
    //                 ),
    //               ),
    //               debugShowCheckedModeBanner: false,
    //               navigatorKey: navKey,
    //               localizationsDelegates: const [
    //                 KhaltiLocalizations.delegate,
    //                 AppLocalizations.delegate,
    //                 GlobalMaterialLocalizations.delegate,
    //                 GlobalCupertinoLocalizations.delegate,
    //                 GlobalWidgetsLocalizations.delegate,
    //               ],
    //               routes: {
    //                 '/': (_) => const HomePage(key: Key('home')),
    //               },
    //               onGenerateInitialRoutes: (route) {
    //                 // Only used for handling response from KPG in Flutter Web.
    //                 if (route.startsWith('/kpg/')) {
    //                   final uri = Uri.parse('https://khalti.com$route');
    //                   return [
    //                     MaterialPageRoute(
    //                       builder: (context) => HomePage(
    //                         key: const Key('kpg-home'),
    //                         params: uri.queryParameters,
    //                       ),
    //                     ),
    //                   ];
    //                 }
    //                 return Navigator.defaultGenerateInitialRoutes(
    //                   navKey.currentState!,
    //                   route,
    //                 );
    //               },
    //             );
    //           },
    //         );
    //       },
    //     );
    //   },
    // );
    return Scaffold();
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => MyAppState();
// }
//
// class MyAppState extends State<MyApp> {
//   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//   FlutterLocalNotificationsPlugin();
//
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
//
//   String fcmToken = "Getting Firebase Token";
//
//   @override
//  initState() {
//     /**
//      * Requesting Permission
//      */
//     requestingPermissionForIOS();
//
//     var initializationSettingsAndroid =
//     AndroidInitializationSettings('@mipmap/ic_launcher');
//
//     final IOSInitializationSettings initializationSettingsIOS =
//     IOSInitializationSettings(
//       requestSoundPermission: false,
//       requestBadgePermission: false,
//       requestAlertPermission: false,
//     );
//
//     final InitializationSettings initializationSettings =
//     InitializationSettings(
//         android: initializationSettingsAndroid,
//         iOS: initializationSettingsIOS);
//
//     flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: selectNotification);
//
//     super.initState();
//
//     FirebaseMessaging.onMessage.listen((message) {
//       print(message);
//       if (message.data.isNotEmpty) MyAppState()._showNotification(message);
//     });
//
//     getTokenz();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter FCM Notification'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "FCM TOKEN:",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 15),
//             Text(
//               fcmToken,
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   requestingPermissionForIOS() async {
//     NotificationSettings settings = await _firebaseMessaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       print('User granted permission');
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       print('User granted provisional permission');
//     } else {
//       print('User declined or has not accepted permission');
//     }
//
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true, // Required to display a heads up notification
//       badge: true,
//       sound: true,
//     );
//   }
//
//   Future _showNotification(RemoteMessage message) async {
//     const AndroidNotificationChannel channel = AndroidNotificationChannel(
//       'high_importance_channel', // id
//       'High Importance Notifications', // title
//       description:
//       'This channel is used for important notifications.', // description
//       importance: Importance.max,
//     );
//
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//         AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//
//     print(message.data);
//     Map<String, dynamic> data = message.data;
//     AndroidNotification? android = message.notification?.android;
//     if (data != null) {
//       flutterLocalNotificationsPlugin.show(
//         0,
//         data['title'],
//         data['body'],
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             channel.id,
//             channel.name,
//             channelDescription:
//             channel.description,
//             icon: android?.smallIcon,
//             // other properties...
//           ),
//           iOS: IOSNotificationDetails(presentAlert: true, presentSound: true),
//         ),
//         payload: 'Default_Sound',
//       );
//     }
//   }
//
//   getTokenz() async {
//     String? token = await _firebaseMessaging.getToken();
//     setState(() {
//       fcmToken = token!;
//       print(fcmToken);
//     });
//   }
//
//   Future selectNotification(dynamic payload) async {
//     await flutterLocalNotificationsPlugin.cancelAll();
//   }
// }