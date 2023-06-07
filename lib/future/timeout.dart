import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

Future<void> main() async {
  await timeoutFuture();
  try {
    await waitThrow("error").timeout(const Duration(seconds: 4));
  } on TimeoutException {
    print("timeout");
  }
}

Future<void> waitThrow(String message) async {
  await Future.delayed(const Duration(seconds: 5));
  throw Exception(message);
}
