import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SecureStorage {
  static final SecureStorage instance = SecureStorage._internal();

  factory SecureStorage() => instance;
  final storage = const FlutterSecureStorage();

  SecureStorage._internal();

  Future<String?> readData({required String key}) async {
    return storage.read(key: key);
  }

  Future writeData({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  Future removeData({required String key}) async {
    await storage.delete(key: key);
  }

  Future clearData() async {
    await storage.deleteAll();
  }
}
