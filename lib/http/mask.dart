import 'dart:convert';

import 'package:dragon_quest/http/model/mask_model.dart';
import 'package:http/http.dart' as http;

void main() async {
  final http.Response response = await getTodo();
  final String jsonString = utf8.decode(response.bodyBytes); // UTF-8로 디코딩
  final Map<String, dynamic> json = jsonDecode(jsonString);
  final Mask json1 = Mask.fromJson(json);

  // 전체 약국
  json1.stores.forEach((json1) {
    print('이름: ${json1.name}');
    print('주소: ${json1.addr}');
    print('상태: ${json1.remainStat}');
    print('-------------------');
  });

  // 재고 부족 약국
  final noStock = json1.stores.where((e) => e.remainStat == null);
  noStock.forEach((noStock) {
    print('이름: ${noStock.name}');
    print('주소: ${noStock.addr}');
    print('상태: ${noStock.remainStat}');
    print('-------------------');
  });
}

Future<http.Response> getTodo() async {
  final headers = {
    'Content-Type': 'application/json; charset=utf-8'
  }; // UTF-8 명시
  return http.get(Uri.parse('http://104.198.248.76:3000/mask'),
      headers: headers);
}
