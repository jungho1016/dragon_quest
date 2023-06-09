import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:dragon_quest/http/model/moviemodel.dart';

void main() async {
  final response = await getMovie(298618);
  final json = jsonDecode(response.body);
  print(json);
  final json1 = Movie.fromJson(json);
  print(json1);
}

Future getMovie(int id) async {
  return http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${id}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
}
