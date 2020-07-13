import 'dart:io';
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';

class Http {
  static Http instance;
  Dio dio;
  BaseOptions options;

  static Http getInstance() {
    if (null == instance) instance = new Http();
    return instance;
  }

  Http() {
    options = new BaseOptions(
      connectTimeout: 10000,
      receiveTimeout: 5000,
      headers: {
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0',
        // 'Referer': 'http://zhjw.qfnu.edu.cn'
      },
      contentType: ContentType.parse("application/x-www-form-urlencoded"),
      responseType: ResponseType.plain, //以文本方式接收数据
    );

    dio = new Dio(options);

    //Cookie管理
    dio.interceptors.add(CookieManager(CookieJar()));

    //添加拦截器
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      // print("-----开始请求-----");
      return options;
    }, onResponse: (Response response) {
      // print("-----开始响应-----");
      return response;
    }, onError: (DioError e) {
      // print("-----发生错误-----");
      return e;
    }));
  }

  /*
   * get请求
   */
  get(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.get(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      return response.data.toString();
      //response.data; 响应体 headers; 响应头 request; 请求体 statusCode; 状态码
    } on DioError catch (e) {
      if (e != null) {
        if (e.response.statusCode == 302) {
          response = await dio.get(e.response.headers['location'][0],
              queryParameters: data,
              options: options,
              cancelToken: cancelToken);
          return response.data.toString();
        }
      }
      return formatError(e);
    }
  }

  /*
   * get请求,返回cookie！！！！！！！
   */
  xget(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.get(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      return response.request.headers['cookie'].toString();
      //response.data; 响应体 headers; 响应头 request; 请求体 statusCode; 状态码
    } on DioError catch (e) {
      if (e != null) {
        if (e.response.statusCode == 302) {
          response = await dio.get(e.response.headers['location'][0],
              queryParameters: data,
              options: options,
              cancelToken: cancelToken);
          return response.data.toString();
        }
      }
      return response.request.headers['Cookie'][0].toString();
    }
  }

  /*
   * post请求
   */
  post(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.post(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      return response.data.toString();
    } on DioError catch (e) {
      if (e != null) {
        if (e.response.statusCode == 302) {
          response = await dio.get(e.response.headers['location'][0],
              queryParameters: data,
              options: options,
              cancelToken: cancelToken);
          return response.data.toString();
        }
      }
      return formatError(e);
    }
  }

  /*
   * 下载文件
   */
  downloadFile(urlPath, savePath) async {
    Response response;
    try {
      response = await dio.download(urlPath, savePath,
          onReceiveProgress: (int count, int total) {
        //进度 print("$count $total");
      });
      return response.data;
    } on DioError catch (e) {
      return formatError(e);
    }
  }

  /*
   * error统一处理
   */
  String formatError(DioError e) {
    if (e.type == DioErrorType.CONNECT_TIMEOUT) {
      return "请求失败-->连接超时";
    } else if (e.type == DioErrorType.SEND_TIMEOUT) {
      return "请求失败-->请求超时";
    } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
      return "请求失败-->响应超时";
    } else if (e.type == DioErrorType.RESPONSE) {
      return "请求失败-->出现异常";
    } else if (e.type == DioErrorType.CANCEL) {
      return "请求失败-->请求取消";
    } else {
      return "请求失败-->未知错误";
    }
  }

  /*
   * 取消请求可选参数
   */
  void cancelRequests(CancelToken token) {
    token.cancel("cancelled");
  }
}
