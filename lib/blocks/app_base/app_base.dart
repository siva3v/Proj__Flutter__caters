import '../../shared/auth/auth_model.dart';
import '../../shared/io/api/api_service.dart';
import '../../shared/io/ldb/local_base.dart';
import 'app_repo.dart';

class AppBase {
  final LocalBase ldb;
  final ApiService api;
  final AppRepo repo;
  late AuthModel _authModel;

  AppBase._create(this.ldb, this.api, this.repo);

  init(){
    ldb.init();
    api.init(this);
    repo.init(this);
  }

  static Future<AppBase> create() async {
    final localBase = await LocalBase.create();
    final apiService = ApiService();
    final appRepo = AppRepo(apiService, localBase);
    return AppBase._create(localBase, apiService, appRepo);
  }

  setAuthModel(AuthModel authModel) {
    _authModel = authModel;
    ldb.setAuth(authModel);
  }

  AuthModel get authModel {
    if (_authModel.username.isNotEmpty) return _authModel;
    _authModel = ldb.getAuth();
    return _authModel;
  }

}

