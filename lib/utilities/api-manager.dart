import 'package:dart_app/models/string-callback.dart';
import 'dart:async';

class ApiManager {
  StringCallback callback;
  void sendDummyRequest({String requestString, StringCallback callback}) {
    this.callback = callback;
    Timer(Duration(seconds: 3), sendCallbackSuccess);
  }

  void sendCallbackSuccess() {
    callback.onSuccess("[{message: 'Success'},]");
  }
}
