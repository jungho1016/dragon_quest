import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:dragon_quest/http/model.dart';

void main() async {
  final response = await getTodo();
  final json = jsonDecode(response.body);
  final json1 = Movie.fromJson(json);
  json1.results.forEach((element) => print(element.overview));
}

Future getTodo() async {
  return http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${28}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  // ${movieId} = upcoming????
}
