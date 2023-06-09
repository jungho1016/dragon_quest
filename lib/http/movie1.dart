import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:dragon_quest/http/model/moviemodel.dart';

void main() async {
  final http.Response response = await getTodo();
  final Map<String, dynamic> json = jsonDecode(response.body);
  final Movie json1 = Movie.fromJson(json);
  json1.results.forEach((element) => print(element.overview));
}

Future<http.Response> getTodo() async {
  return http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
}

final response = http.get(Uri.parse(
    'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
