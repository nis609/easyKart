import 'package:hive_flutter/hive_flutter.dart';

class HiveStorage {
  final box = Hive.box('mailobox');

  set userName(String name) => box.put('name', name);
  set imageUrl(String imageUrl) => box.put('imageUrl', imageUrl);

  set socialLogin(String socialMediaType) => box.put('socialMediaType', socialMediaType);

  String get userName => box.get('name') ?? '';
  String get imageUrl => box.get('imageUrl') ?? '';
   String get socialLogin => box.get('socialMediaType') ?? '';
}
