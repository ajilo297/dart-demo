import 'package:dart_app/models/application.dart';
import 'package:dart_app/models/string-callback.dart';
import 'package:dart_app/utilities/api-manager.dart';

class CallbackApplication extends Application implements StringCallback {
  @override
  void run() {
    makeDummyRequest();
  }

  void makeDummyRequest() {
    StringCallback callback = this;
    ApiManager().sendDummyRequest(
        requestString: 'localhost:8081/api/get', callback: callback);
  }

  @override
  void onSuccess(String result) {
    print(result);
  }

  @override
  void onError(String error) {
    print(error);
  }
}
