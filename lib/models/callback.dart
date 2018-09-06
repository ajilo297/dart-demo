abstract class Callback<K, V> {
  void onSuccess(K response);
  void onError(V error);
}
