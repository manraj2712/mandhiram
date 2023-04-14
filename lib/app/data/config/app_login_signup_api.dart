import 'package:dio/dio.dart' as DIO;
import 'package:dio/dio.dart';
import 'package:mandhiram/app/data/config/config.dart';

final Dio _dio = Dio();

Future<DIO.Response<dynamic>> registerUser(
    {bool? isPost, dynamic data, String? endUrl, bool? sendFile}) async {
  sendFile ?? false
      ? _dio.options.headers["Content-Type"] = "multipart/form-data"
      : null;
  if (isPost ?? true) {
    var response = await _dio.post(
      endUrl ?? "",
      data: data,
      options: DIO.Options(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        validateStatus: (status) => true,
      ),
    );

    return response;
  } else {
    var response = await _dio.put(
      endUrl ?? "",
      data: data,
      options: DIO.Options(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        validateStatus: (status) => true,
      ),
    );
    return response;
  }
}

Future<DIO.Response<dynamic>> loginUser(
    {bool? isPost, dynamic data, String? endUrl, bool? sendFile}) async {
  _dio.options.headers["authTemple"] = authToken;
  _dio.options.headers["authUser"] = getBox.read(userToken) ?? "";
  sendFile ?? false
      ? _dio.options.headers["Content-Type"] = "multipart/form-data"
      : null;
  if (isPost ?? true) {
    var response = await _dio.post(
      endUrl ?? "",
      data: data,
      options: DIO.Options(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        validateStatus: (status) => true,
      ),
    );

    return response;
  } else {
    var response = await _dio.put(
      endUrl ?? "",
      data: data,
      options: DIO.Options(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        validateStatus: (status) => true,
      ),
    );
    return response;
  }
}

Future<void> logout() async {
  try {
    Response response = await _dio.get(
      'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
      // queryParameters: {'apikey': ApiSecret.apiKey},
      options: Options(
          // headers: {'Authorization': 'Bearer $accessToken'},
          ),
    );
    return response.data;
  } on DioError catch (e) {
    return e.response!.data;
  }
}
