
import 'dart:convert';
import 'package:hive_flutter/adapters.dart';
import '../../auth/auth_model.dart';

class LocalBase {
  final Box _auth, _apps, _base;

  LocalBase._create(this._auth, this._apps, this._base);

  static Future<LocalBase> create() async {
    await Hive.initFlutter();
    final auth = await Hive.openBox('auth');
    final applications = await Hive.openBox('applications');
    final base = await Hive.openBox('base');
    return LocalBase._create(auth, applications, base);
  }

  init(){

  }

  // Auth
  setAuth(AuthModel authModel) => _auth.put("us", authModel.toJsonString());
  getAuth() => (_auth.isEmpty) ? AuthModel.empty() : AuthModel.fromJsonString(_auth.get("us"));


  // Apps
  getAllApplications() => _apps.values.toList();
  getApplication(int id) => _apps.get(id);
  Future putApplication(Map app) async => await _apps.put(app['id'], app);
  getLocalAppId() => _apps.length;


  // Base
  setJson(String name, dynamic json) => _base.put(name, jsonEncode(json));
  getJson(String name) { final vl = _base.get(name); return vl==null ? null : jsonDecode(vl); }

  setString(key, value) async => await _base.put(key, value);
  getString(key) => _base.get(key);


  nukeAll(){
    Hive.deleteFromDisk();
  }

}
