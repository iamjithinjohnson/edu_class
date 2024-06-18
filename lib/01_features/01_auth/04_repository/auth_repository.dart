import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:edu_class/01_features/01_auth/01_model/auth_model/loginreqmodel.dart';
import 'package:edu_class/02_services/http_service.dart';
import 'package:edu_class/04_utils/endPoints.dart';
import 'package:edu_class/04_utils/injection/injection.dart';
import 'package:edu_class/04_utils/main_failure/main_failure.dart';

abstract class IAuthService {
  Future<Either<Map<MainFailure, dynamic>, String>> login(
      {required LoginReqModel data});
}

@LazySingleton(as: IAuthService)
class AuthRepository implements IAuthService {
  @override
  Future<Either<Map<MainFailure, dynamic>, String>> login(
      {required LoginReqModel data}) async {
    var response = await getIt<HttpService>().request(
      method: HttpMethod.post,
      apiUrl: EndPoints.login,
      data: jsonEncode(data.toJson()),
    );
    return response.fold(
      (l) => Left(l),
      (res) async => const Right("Success"),
    );
  }
}
