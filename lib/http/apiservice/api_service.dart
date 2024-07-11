import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../constant/http_url.dart';
import '../dio_client.dart';

part 'api_service.g.dart';

///所有接口API参考Listen1项目API
@RestApi(baseUrl: HttpUrl.BASE_NETEASE_URL)
abstract class ApiService {
  factory ApiService({Dio? dio, String? baseUrl}) {
    dio ??= DioClient().dio;
    return _ApiService(dio, baseUrl: baseUrl);
  }


}
