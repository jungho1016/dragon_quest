import 'dart:convert';
import 'package:dragon_quest/http/model/moviedetail.dart';
import 'package:http/http.dart' as http;

import 'package:dragon_quest/http/model/moviemodel.dart';

void main() async {
  final http.Response response = await getMovie(298618);
  final Map<String, dynamic> json = jsonDecode(response.body);
  print(json);
  final Movie json1 = Movie.fromJson(json);
  print(json1);
}

Future<http.Response> getMovie(int id) async {
  return http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${id}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
}
