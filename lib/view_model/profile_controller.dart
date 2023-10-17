import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_invest/model/profile/profile.dart';

/// Controller for injecting profile dependency.
class ProfileController extends ChangeNotifier {

  /// Method for adapter registration.
  void _registerAdapter(){
    if(!Hive.isAdapterRegistered(1)){
      Hive.registerAdapter(ProfileAdapter());
    }
  }

  /// Method for creating new profiles.
  Future<void> createNewProfile(String nickName, String password) async {
    _registerAdapter();

    const secureStorage = FlutterSecureStorage();
    final containsEncryptionKey = await secureStorage.containsKey(key: 'key');

    if (!containsEncryptionKey) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(key: 'key', value: base64UrlEncode(key));
    }

    final key = await secureStorage.read(key: 'key');
    if (key != null) {
      final encryptionKey = base64Url.decode(key);

      final box = await Hive.openBox(
        'vaultBox',
        encryptionCipher: HiveAesCipher(encryptionKey),
      );
      final profile =
          Profile(null, null, nickName: nickName, password: password);

      await box.add(profile);
    } else {
      throw Exception('encryption key is null');
    }
  }

}
