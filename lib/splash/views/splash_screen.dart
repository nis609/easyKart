import 'dart:async';


import 'package:ecoomerce_app/res/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../config/service_locator.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _secure = const FlutterSecureStorage();
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      await locator.allReady();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Image.asset(
              AppAsset.appLOGOGIF,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
