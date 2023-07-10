import '../../shared/io/api/api_service.dart';
import '../../shared/io/ldb/local_base.dart';
import '../../shared/util/constants/apis_and_urls.dart';
import '../../shared/util/more/app_error.dart';
import 'app_base.dart';
import 'app_cubit.dart';

class AppRepo {
  final ApiService apiService;
  final LocalBase localBase;
  late AppBase appBase;

  AppRepo(this.apiService, this.localBase);

  init(AppBase appBase){
    this.appBase = appBase;
  }

  Future verifyCredentials(AppCubit? appCubit, String username, String password) {

    return Future(() => null);
  }


  Future preFetchApiResponses() async {
    return await Future.wait([
      apiService.authorizedGet(ApisAndUrls.loanAppContentApi),
      apiService.authorizedGet(ApisAndUrls.relatedToUserDealersApi),
    ]).then((value){

    }).onError((error, stackTrace) {
      AppError.onError("createNewApplicationForm", error);
    });
  }

}