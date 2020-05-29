
import 'package:dio/dio.dart';
import 'package:jwellflutter/api/config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeOut);
  static final dio = Dio(baseOptions);

  static Future<T> getRequest<T>(String url,
      {Map<String, dynamic> params, Interceptor inter}) async {
//    1、创建单独配置
    final options = Options(method: "get");
//    拦截器
//    创建默认全局拦截器
    Interceptor dInter = InterceptorsWrapper(onRequest: (options) {
      print("get请求拦截");
      return options;
    }, onResponse: (response) {
      print("get响应拦截");
      return response;
    }, onError: (err) {
      return err;
    });
    List<Interceptor> inters = [dInter];
//    添加拦截器
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);
//  2、发送网络请求
    try {
      Response response =
          await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

//  post 请求
  static Future<T> postRequest<T>(String url,
      {Map<String, dynamic> params, Interceptor inter}) async {
    //    1、创建单独配置
    final options = Options(method: "post");
//    拦截器
//    创建默认全局拦截器
    Interceptor dInter = InterceptorsWrapper(onRequest: (options) {
      print("post请求拦截");
      return options;
    }, onResponse: (response) {
      print("post响应拦截");
      return response;
    }, onError: (err) {
      return err;
    });
    List<Interceptor> inters = [dInter];
//    添加拦截器
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);
//  2、发送网络请求
    try {
      Response response =
          await dio.request(url, data: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

//  图片上传(待测试这里上传文件的代码)
  static Future<FormData> uploadFiles(
      String url, String filePath, String fileName,
      {Map<String, dynamic> params, Interceptor inter}) async {
    Map<String, dynamic> map = Map();
    map = params;
    map["file"] = await MultipartFile.fromFile(filePath, filename: fileName);
    print(map);
    FormData formData = FormData.fromMap(map);
    try {
      Response response = await dio.post(
        url,
        data: formData,
        onSendProgress: (int progress, int total) {
          print("当前进度是 $progress, 总进度是 $total");
        },
      );
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
