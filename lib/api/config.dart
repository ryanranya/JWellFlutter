class HttpConfig{

  static const String baseURL = "https://douban.uieee.com/v2";
  static const int timeOut = 30000;
  static const Map<String,dynamic> headers = {"Content-Type":"application/json"};
}

class HomeConfig{
  static const int movieCount = 20;
}